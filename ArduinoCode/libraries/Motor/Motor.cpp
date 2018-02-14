
#include "Arduino.h"
#include "Motor.h"


#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13





Motor::Motor(){
	pinMode(snelheidA,OUTPUT);
	pinMode(snelheidB,OUTPUT);
	pinMode(richtingA,OUTPUT);
	pinMode(richtingB,OUTPUT);



}



void Motor::vooruit(int sA, int rA, int sB, int rB){
	digitalWrite(richtingA,!rA);
	digitalWrite(richtingB,!rB);
	analogWrite(snelheidA,sA);
	analogWrite(snelheidB,sB);




}



void Motor::achteruit(int sA, int rA, int sB, int rB){

	digitalWrite(richtingA,rA);
	digitalWrite(richtingB,rB);
	analogWrite(snelheidA,sA);
	analogWrite(snelheidB,sB);





}

void Motor::rechts(int sA, int rA, int sB, int rB){
	digitalWrite(richtingA,rA);
	digitalWrite(richtingB,rB);
	analogWrite(snelheidA,sA);
	analogWrite(snelheidB,sB);

}



void Motor::links(int sA, int rA, int sB, int rB){
	digitalWrite(richtingA,rA);
	digitalWrite(richtingB,rB);
	analogWrite(snelheidA,sA);
	analogWrite(snelheidB,sB);

}
