#include <FaBoLCD_PCF8574.h>

//#include <LiquidCrystal_I2C.h>

/**
 * 
 */

#include <Wire.h>
//#include <LiquidCrystal_I2C.h>
#include "HX711.h"
#include <LiquidCrystal.h>

HX711 loadcell;
//LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x20 for a 16 chars and 2 line display
//LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);

//FaBoLCD_PCF8574 lcd;

const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 8;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);


const int POT_PIN = 0;
const int TARE_PIN= 2;
const int LOADCELL_DOUT_PIN = 6;
const int LOADCELL_SCK_PIN= 7;

const int ZERO_POINT= 200;

int TARE_MODE = 0;

double scale_val = 30;
int last_pot = 0;

void tare_scale();

void setup()
{
    Serial.begin(115200);

    //lcd.init();                      // initialize the lcd
    //lcd.backlight();
    lcd.begin(16,2);
    //Serial.println("Initializing the scale");

    lcd.print("Hello");

    loadcell.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);

    //Serial.println("Taring Scale");
    loadcell.set_scale(scale_val);
    loadcell.tare();

    attachInterrupt(digitalPinToInterrupt(TARE_PIN), toggleMode, RISING);

}

void loop() 
{
  
    lcd.setCursor(0,0);
    lcd.print("Force in pounds:"); 

    scale_val = map(analogRead(POT_PIN), 0, 1023, 30000, 45000) / 1000.0;
    loadcell.set_scale(scale_val);

    if (loadcell.wait_ready_timeout(1000)) 
    {
        long reading = loadcell.get_units(1);
        //Serial.print("HX711 reading with value of ");
        Serial.print(scale_val);
        Serial.print("\t");
        Serial.println((double) reading / 1.0);

        lcd.setCursor(0,1);
        lcd.print(reading / 1000.0);
    
    }
    else 
    {
        Serial.println("HX711 not found.");
    }

    last_pot = analogRead(POT_PIN);

    delay(5);
}

void tare_scale()
{
    Serial.println("Beginning Tare Process");

    int value = 1000;
    int zero_trial = 1;
    int zero_count = 0;
    int last_zero = 1;

    interrupts();

    while(TARE_MODE)
    {
        if(zero_trial > 50)
        {
            Serial.println("Tare process timeout, zero not found.");
            TARE_MODE = 0;
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
                Serial.print("Zero count is now: ");
                Serial.println(zero_count);
            }
            else // else this is the first zero in sequence
            {
                zero_count = 1;
                Serial.println("First Zero!");
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
            Serial.println("Taring successful!");
            TARE_MODE = 0;
            break;
        }

        // incrememnt timeout count
        zero_trial++;
        delay(10);
    }

    Serial.println("");
}

void toggleMode()
{
    // disable interrupts for debounce
    noInterrupts();

    delay(10);

    if(digitalRead(TARE_PIN))
    {
        if(TARE_MODE)
        {
            Serial.println("Cancelling Tare Mode.");
            TARE_MODE = 0;

            interrupts();
        }
        else
        {
            Serial.println("Setting to Tare Mode.");
            TARE_MODE = 1;
            tare_scale();
        }
    }
}

// end file
