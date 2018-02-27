
#include "Arduino.h"
#include "Speed.h"





Speed::Speed(){
	pinMode(sensor,INPUT);


}



void Speed::getSpeed(){
	registreerPuls();


}



void Speed::registreerPuls(){

	if(digitalRead(sensor)==1){

		if(!actief){
			//rotatie=rotatie+1;
			getDuration();
			//Serial.println(rotatie);
			actief=true;

		}
	}
	else {
		actief=false;
	}
}


void Speed::berekenSnelheid(){







}

void Speed::getDuration(){
	huidigeTijd=millis();
	tijdsduur=huidigeTijd-vorigeTijd;
	vorigeTijd=huidigeTijd;
	Serial.println(tijdsduur);
	v=0.2/(tijdsduur/1000);

	Serial.println(v);



}
