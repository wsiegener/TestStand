/**
 * 
 */

#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include "HX711.h"

#include <Arduino.h>
#include <WiFi.h>
#include <WiFiClientSecure.h>
#include <WebSocketsServer.h>

WebSocketsServer webSocket = WebSocketsServer(80);

bool conn_ = false;

void webSocketEvent(uint8_t num, WStype_t type, uint8_t * payload, size_t length) 
{
    switch(type) 
    {
        case WStype_DISCONNECTED:
            Serial.printf("[%u] Disconnected!\n", num);
            break;
        case WStype_CONNECTED:
            {
                IPAddress ip = webSocket.remoteIP(num);
                Serial.printf("[%u] Connected from %d.%d.%d.%d url: %s\n", num, ip[0], ip[1], ip[2], ip[3], payload);

                webSocket.sendTXT(num, "Connected");

                conn_ = true;
            }
            break;
        case WStype_TEXT:
            Serial.printf("[%u] get Text: %s\n", num, payload);

            // send message to client
            webSocket.sendTXT(num, "message here");

            // send data to all connected clients
            // webSocket.broadcastTXT("message here");
            break;
        case WStype_BIN:
        case WStype_ERROR:      
        case WStype_FRAGMENT_TEXT_START:
        case WStype_FRAGMENT_BIN_START:
        case WStype_FRAGMENT:
        case WStype_FRAGMENT_FIN:
      break;
    }
}

HX711 loadcell;
//LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display

const int POT_PIN = 4;
const int TARE_PIN= 0;
const int LOADCELL_DOUT_PIN = 16;
const int LOADCELL_SCK_PIN= 17;

const int ZERO_POINT= 200;

/**
 * STATES:
 *  0 - update values as normal
 *  1 - tare mode
 *  2 - update, record, and transmit values 
 *  3 - idle?
 */
int STATE = 0;

int TARE_DONE = 0;

double scale_val = 79.28;
int last_pot = 0;

void setup()
{
    Serial.begin(115200);

    pinMode(12, OUTPUT);
    pinMode(14, OUTPUT);

    digitalWrite(12, LOW);
    
    //lcd.init();                      // initialize the lcd 
    //lcd.backlight();

    WiFi.begin("NETWORK", "PASSWORD");

    while (WiFi.status() != WL_CONNECTED) 
    {
        delay(500);
        Serial.print(".");
    }

    Serial.println("Connected!");
    digitalWrite(12, HIGH);


    webSocket.begin();
    webSocket.onEvent(webSocketEvent);

    loadcell.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);

    Serial.println("After load cell begin");

    Serial.println("Taring Scale");

    update_reading();
    
    loadcell.set_scale(scale_val);

    Serial.println("Scale is set");

    loadcell.tare();
    
    Serial.println("Tared");

    tare_scale();
    
    attachInterrupt(digitalPinToInterrupt(TARE_PIN), toggleMode, RISING);   

}


bool status_ = false;

void loop() 
{
    if(!status_)
    {
        if(conn_)
        {
            digitalWrite(14, HIGH);
            status_ = true;
        }
    }
    webSocket.loop();
    switch(STATE)
    {
      case 0:
      {
        if(TARE_DONE == 0) // state needs to be changed
        {
          STATE = 1;
        }
        else
        {
          update_reading();
        }
        break;
      }
      case 1:
      {
        if(TARE_DONE == 0) // if call for tare
        {
          tare_scale();
        }
        else if(TARE_DONE == 2)
        {
          // TARE RUNNING
        }
        else if(TARE_DONE == 1)
        {
          STATE = 0;
        }
        break;
      }
      default:
      {
        break;
      }
    }

    delay(5);
}

float value = 0;
float t_ = 0;
String msg = "";

void update_reading()
{


  
    //lcd.setCursor(0,0);
    //lcd.print("Force in kgs:"); 

    //scale_val = map(analogRead(POT_PIN), 0, 4095, 79000, 81000) / 1000.0;

    if (loadcell.wait_ready_timeout(1000)) 
    {
        long reading = loadcell.get_units(1);
        //Serial.print("HX711 reading with value of ");
        //Serial.print(scale_val);
        //Serial.print("\t");

        t_ = millis();
        value = reading;
        
        msg = String(t_) + ": " + String(value);
        webSocket.broadcastTXT(msg);

        
        Serial.println((double) reading / 1.0);
        

        //lcd.setCursor(0,1);
        //lcd.print(reading / 1000.0);
    }
    else 
    {
        Serial.println("HX711 not found.");
    }
    
    last_pot = analogRead(POT_PIN);
}

void tare_scale()
{
    //Serial.println("Beginning Tare Process");
    
    TARE_DONE = 2;

    int value = 1000;
    int zero_trial = 1;
    int zero_count = 0;
    int last_zero = 1;

    interrupts();

    while(TARE_DONE == 2)
    {
        if(zero_trial > 50)
        {
            //Serial.println("Tare process timeout, zero not found.");
            TARE_DONE = 1;
            break;
        }

        loadcell.set_scale(scale_val);
        loadcell.tare();
        value = loadcell.get_value(5 + zero_trial);

        
        Serial.print("zero_trial: ");
        Serial.print(zero_trial);
        Serial.print("\tRaw: ");
        Serial.print(value);
        Serial.print("\tlbs: ");
        Serial.print((double)value / (1000.0 * scale_val));
        Serial.print("\tZero Count: ");
        Serial.println(zero_count);
        
          
         

        // if value is in zero range
        if(abs(value) < ZERO_POINT)
        {
            // if last check was a valid zero, increment
            if(last_zero)
            {
                zero_count++;
                //Serial.print("Zero count is now: ");
                //Serial.println(zero_count);
            }
            else // else this is the first zero in sequence
            {
                zero_count = 1;
                //Serial.println("First Zero!");
            }
            last_zero = 1;
        }
        else if(last_zero) // reset if no zero is found immediately after
        {
            last_zero = 0;
            zero_count = 0;
        }

        if(zero_count >= 3)
        {
            //Serial.println("Taring successful!");
            TARE_DONE = 1;
            break;
        }

        // incrememnt timeout count
        zero_trial++;
        delay(10);
    }

    //Serial.println("");
}

void toggleMode()
{  
    // disable interrupts for debounce
    noInterrupts();

    delay(20);

    if(digitalRead(TARE_PIN))
    {        
        if(STATE == 1) // if we are in tare mode, we want to cancel that
        {
            Serial.println("Cancelling Tare Mode.");
            TARE_DONE = 1;
            
            interrupts();
        }
        else if(STATE == 0)
        {
            Serial.println("Setting to Tare Mode.");            
            TARE_DONE = 0;
        }
    }    
}


// end file
