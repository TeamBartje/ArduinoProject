
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
	Serial.println(sA);
	Serial.println(sB);
	Serial.println(rA);
	Serial.println(rB);




}



void Motor::achteruit(int sA, int rA, int sB, int rB){

		Serial.println("Achteruit rijden");





}

void Motor::rechtsGewoon(int sA, int rA, int sB, int rB){
		Serial.println("Corrigeren rechts gewoon");



}


void Motor::rechtsScherp(int sA, int rA, int sB, int rB){
	Serial.println("Corrigeren rechts scherp");






}

void Motor::linksGewoon(int sA, int rA, int sB, int rB){
	Serial.println("Corrigeren links gewoon");



}

void Motor::linksScherp(int sA, int rA, int sB, int rB){
	Serial.println("Corrigeren links links");




}
