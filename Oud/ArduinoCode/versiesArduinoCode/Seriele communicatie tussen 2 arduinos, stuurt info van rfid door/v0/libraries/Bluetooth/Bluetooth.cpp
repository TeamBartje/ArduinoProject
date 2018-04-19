
#include "Arduino.h"
#include "Bluetooth.h"
#include "Speed.h"
#include <SoftwareSerial.h>
//#include "rfid-master.h"
SoftwareSerial BTSerial(2, A2); // TX | RX
Speed speed;
double snelheidswaarde;
Bluetooth::Bluetooth(){
    BTSerial.begin(9600);



}
void Bluetooth::schrijfiets(double snelheid){

if(millis()%1000==0){
  BTSerial.println(snelheid);
}

//BTSerial.println("test");


}

void Bluetooth::stuurSnelheid(){
  snelheidswaarde=speed.getSpeed();
  if(millis()%1000==0){
    BTSerial.println(snelheidswaarde);
    //Serial.println(snelheidswaarde);
}


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

void Bluetooth::stuurRFID(){





}
