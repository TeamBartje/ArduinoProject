#include <SoftwareSerial.h>
SoftwareSerial BTSerial(2, 3); // TX | RX
String zin="";
void setup()
{
pinMode(9, OUTPUT); // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
digitalWrite(9, HIGH);
Serial.begin(9600); 
Serial.println("Enter AT commands:");
BTSerial.begin(9600); // HC-05 default speed in AT command more
}
void loop()
{
if(BTSerial.available()){
  delay(50);
  while(BTSerial.available()){
    
    zin=zin+((char)BTSerial.read());
  //Serial.printl((char)BTSerial.read());
  
  }
  Serial.println(zin);
  Serial.println();
  zin="";
}
}



/*if(BTSerial.available()){
  delay(150);
  while(BTSerial.available()){
  Serial.write((char)BTSerial.read());
  
  }
  Serial.println();
}*/
