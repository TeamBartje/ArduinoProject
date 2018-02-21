
#include "Arduino.h"
#include "Motor.h"


#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13

int lfs1=7;
int lfs2=6;
int lfs3=5;
int lfs4=4;
int LFS[4];
int error;




Motor::Motor(){
	pinMode(snelheidA,OUTPUT);
	pinMode(snelheidB,OUTPUT);
	pinMode(richtingA,OUTPUT);
	pinMode(richtingB,OUTPUT);
	pinMode(lfs1,INPUT);
	pinMode(lfs2,INPUT);
	pinMode(lfs3,INPUT);



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



void Motor::bepaalPID(){
	LFS[0]=digitalRead(lfs4);
	LFS[1]=digitalRead(lfs3);
	LFS[2]=digitalRead(lfs2);
	LFS[3]=digitalRead(lfs1);


	if((LFS[0]== 0 )&&(LFS[1]== 1 )&&(LFS[2]== 1 )&&(LFS[3]== 0 ))  { error = 2;} //The car is over the white line: error
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 1 )&&(LFS[3]== 1 ))  { error = 1;} //The car has to turn to the right (the two sensors on the right are on the full line)
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 1 ))  { error = 0;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 0 ))  { error = -1;} //car must turn to the right (All the sensors are between the dotted line and the full line)
  else if((LFS[0]== 1 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 0 ))  { error = -2;} //car must turn to the right (Middle sensor is on the dotted line)






}
