#include <SPI.h>
#include "RF24.h"
#include "nRF24L01.h"

// Transmitter code runs on ESP32
RF24 radio(4,5); // CE, CSN
byte address[6] = "00001";

void setup() 
{
  Serial.begin(115200);
  
  radio.begin();
  radio.setPALevel(RF24_PA_LOW);
  radio.openWritingPipe(address);
  radio.stopListening();
}

const char text[] = "Testing";

void loop() 
{
  radio.write(&text, sizeof(text));
  Serial.print("Sending text: ");
  Serial.println(text);
  delay(1000);
}
