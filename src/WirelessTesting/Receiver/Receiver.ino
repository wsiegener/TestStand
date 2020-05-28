#include <SPI.h>
#include "RF24.h"
#include "nRF24L01.h"

// Receiver code runs on UNO
RF24 radio(9,10); // CE, CSN
byte address[6] = "00001";

void setup() 
{
  Serial.begin(115200);
  
  radio.begin();
  radio.setPALevel(RF24_PA_LOW);
  radio.openReadingPipe(0, address);
  radio.startListening();
}

void loop() 
{
  if(radio.available())
  {
    char text[32] = "";
    radio.read(&text, sizeof(text));
    Serial.println(text);
  }
}
