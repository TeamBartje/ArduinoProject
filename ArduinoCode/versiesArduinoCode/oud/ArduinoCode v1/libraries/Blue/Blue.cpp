
#include "Arduino.h"
#include "Blue.h"
#include "Motor.h"




Blue::Blue(){}



void Blue::verwerkInkomendCommando(String commando){
	Serial.println(commando);
	
}
