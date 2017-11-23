#include <SoftwareSerial.h>
SoftwareSerial BTSerial(2, 3); // TX | RX
void setup()
{

BTSerial.begin(9600);
Serial.begin(9600); 
BTSerial.begin(9600); // Alle communicatie gebeurt op 9600 Baudrate
}

int i=0;
void loop(){
  i++;
delay(500);

BTSerial.println(i); // het vreemde eraan is dat ik gewoon Serial.println gebruik en niet BTSerial.println :/


}
