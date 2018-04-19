
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



void Motor::rij(int correctie){
	if (correctie>20){
		correctie=20;
	}

	snelheid=60+correctie;

	digitalWrite(richtingA,0);
	digitalWrite(richtingB,1);
	analogWrite(snelheidA,snelheid);
	analogWrite(snelheidB,60-correctie);
	Serial.println("snelheid linkerwiel  "+ String(snelheid));
	Serial.println("snelheid rechterwiel "+ String(60-correctie));
	//Serial.println("snelheid rechterwiel "+ String(60));




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


	/*Serial.print(LFS[0]);
	Serial.print(LFS[1]);
	Serial.print(LFS[2]);
	Serial.println(LFS[3]);

	Serial.println(error);*/
	corrigeer();


}



void Motor::corrigeer(){
	Kp=1;
	Ki=1;
	Kd=1;

	P = error;
  I = I + error;
  D = error-previousError;
  PIDvalue = (Kp*P) + (Ki*I) + (Kd*D);
  previousError = error;
	//snelheid=snelheid-PIDvalue;
	//Serial.println("Snelheid: " + String(snelheid));
	//Serial.println("corectiefactor: " + String(PIDvalue));

	rij(PIDvalue);


}
