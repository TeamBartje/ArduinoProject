
#include "Arduino.h"
#include "Speed.h"



Speed::Speed(){
	pinMode(sensor,INPUT);


}



double Speed::getSpeed(){
	//Serial.println("speed");
	//Serial.println("speed");
	registreerPuls();
return v;
//Serial.println();

}



void Speed::registreerPuls(){

	if(digitalRead(sensor)==1){
		//Serial.println("leest1");
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
	v=0.235/(tijdsduur/1000);

	//Serial.println(v);



}
