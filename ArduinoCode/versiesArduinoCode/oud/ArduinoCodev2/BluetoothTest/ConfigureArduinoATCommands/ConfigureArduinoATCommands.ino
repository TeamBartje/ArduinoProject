#include <SoftwareSerial.h>
SoftwareSerial BTSerial(0, 1); // TX | RX
void setup()
{
pinMode(9, OUTPUT); // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
digitalWrite(9, HIGH);
Serial.begin(38400); 
Serial.println("Enter AT commands:");
BTSerial.begin(38400); // HC-05 default speed in AT command more
}
void loop()
{
// Keep reading from HC-05 and send to Arduino Serial Monitor
if (BTSerial.available()){
//Take the string returned by the module and print it
Serial.println(BTSerial.readString());}
// Keep reading from Arduino Serial Monitor and send to HC-05
if (Serial.available()){
BTSerial.println(Serial.readString());}
}
