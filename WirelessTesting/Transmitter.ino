#include <SPI.h>
#include <RF24.h>
#include <nRF24L01.h>

RF24 transmitter(7, 8);

byte address[] = "trnsmttr";

void setup()
{
    Serial.begin(115200);

    Serial.println(F("Beginning transmitter."));

    transmitter.begin();

    transmitter.setPALevel(RF24_PA_LOW);

    transmitter.openWritingPipe(address);
    
    transmitter.stopListening();
}

void loop()
{
    unsigned long time = micros();
    if (!transmitter.write( &time, sizeof(unsigned long) ))
    {
        Serial.println(F("failed"));
    }

    delay(100);
}