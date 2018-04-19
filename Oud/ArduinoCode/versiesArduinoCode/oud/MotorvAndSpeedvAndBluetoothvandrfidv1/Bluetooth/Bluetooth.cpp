
#include "Arduino.h"
#include "Bluetooth.h"
#include <SoftwareSerial.h>
SoftwareSerial BTSerial(2, A2); // TX | RX

Bluetooth::Bluetooth(){
    BTSerial.begin(9600);



}
void Bluetooth::schrijfiets(double snelheid){

if(millis()%1000==0){
  BTSerial.println(snelheid);
}

//BTSerial.println("test");


}

void Bluetooth::stuurSnelheid(int snelheid){
  BTSerial.println(snelheid);



}

void Bluetooth::ontvangIets(){

  if(BTSerial.available()){
    //delay(50);
    while(BTSerial.available()){

      zin=zin+((char)BTSerial.read());
    //Serial.printl((char)BTSerial.read());

    }
    Serial.println(zin);
    //Serial.println();
    zin="";


  }


}
