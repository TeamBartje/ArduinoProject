
#include "Arduino.h"
#include "Bluetooth.h"
#include <SoftwareSerial.h>
SoftwareSerial BTSerial(2, 3); // TX | RX

Bluetooth::Bluetooth(){
    BTSerial.begin(9600);



}
void Bluetooth::schrijfiets(){

delay(500);

BTSerial.println("test");


}

void Bluetooth::stuurSnelheid(int snelheid){
  BTSerial.println(snelheid);



}
