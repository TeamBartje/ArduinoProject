#include <SoftwareSerial.h>
#include <Blue.h>
Blue blue;
SoftwareSerial BTSerial(2, 3); // TX | RX
String zin="";

void setup()
{


Serial.begin(9600); 
Serial.println("Ontvangen Waarden: ");
BTSerial.begin(9600); // HC-05 default speed in AT command more
}
void loop()
{
if(BTSerial.available()){
  delay(50);
  while(BTSerial.available()){
    
    zin=zin+((char)BTSerial.read());
    
  
  }
  blue.verwerkInkomendCommando(zin);
  zin="";
 
}
}



