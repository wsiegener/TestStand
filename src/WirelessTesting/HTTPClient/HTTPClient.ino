/**
 * HTTPClient 
 * 
 */

#include "WiFi.h"

const char* ssid = "FiOS-3I4B5";
const char* pass = "bip8cycle8316pup";

String server = "PLACEHOLDER";

void setup() 
{
  Serial.begin(115200);

  WiFi.begin(ssid, pass);
  Serial.println("Connecting");
  
  while(WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to Network with IP: ");
  Serial.println(WiFi.localIP());
}

void loop() 
{

}
