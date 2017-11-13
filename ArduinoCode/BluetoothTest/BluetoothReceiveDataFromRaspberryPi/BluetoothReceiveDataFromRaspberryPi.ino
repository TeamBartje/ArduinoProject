#include <SoftwareSerial.h>
SoftwareSerial BTSerial(0, 1); // TX | RX
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
  Serial.write((char)BTSerial.read());
  
  }
  Serial.println();
}
}
