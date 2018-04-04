
#include "Arduino.h"
#include "Motor.h"


#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13

int lfs1=8;
int lfs2=6;
int lfs3=5;
int lfs4=4;
int lfs5=A0;
int lfs6=A1;
int LFS[6];
int error;
String waarde;
int intwaarde;
char charwaarde[6];




Motor::Motor(){
	pinMode(snelheidA,OUTPUT);
	pinMode(snelheidB,OUTPUT);
	pinMode(richtingA,OUTPUT);
	pinMode(richtingB,OUTPUT);
	pinMode(lfs1,INPUT);
	pinMode(lfs2,INPUT);
	pinMode(lfs3,INPUT);
	pinMode(lfs4,INPUT);
	pinMode(lfs5,INPUT);
	pinMode(lfs6,INPUT);




}



void Motor::rij(int correctie){
	//Serial.println("correctie");
	/*if (correctie>50){
		correctie=50;
		limitReached=true;
	}
	else if (correctie<-50){
		correctie=-50;
		limitReached=true;
	}*/

	snelheid=80;

	digitalWrite(richtingA,0);
	digitalWrite(richtingB,1);
	analogWrite(snelheidA,snelheid+correctie);
	analogWrite(snelheidB,snelheid-correctie);
	//Serial.println("snelheid rechterwiel  "+ String(snelheid+correctie));
	//Serial.println("snelheid linkerwiel: "+String(snelheid-correctie) + "        "+"snelheid rechterwiel: "+ String(snelheid+correctie));
	//Serial.println("snelheid linkerwiel "+ String(snelheid-correctie));
	//Serial.println("snelheid rechterwiel "+ String(60));




}




void Motor::bepaalPID(){
	//Serial.println("bepaalPID");

	LFS[0]=digitalRead(lfs4);
	LFS[1]=digitalRead(lfs5);
	LFS[2]=digitalRead(lfs6);

	LFS[3]=digitalRead(lfs3);
	LFS[4]=digitalRead(lfs2);
	LFS[5]=digitalRead(lfs1);

//waarde=String(LFS);
//charwaarde={char(LFS[0]),char(LFS[1]),char(LFS[2]),char(LFS[3]),char(LFS[4]),char(LFS[5])};
//Serial.println(charwaarde);
//waarde=String(LFS[0])+String(LFS[1])+String(LFS[2])+String(LFS[3])+String(LFS[4])+String(LFS[5]);
//intwaarde=Integer.parseInt(waarde);
//Serial.println(waarde);

/*switch(charwaarde){
	case '000100': error=3; break;
	case '000110': error=3; break;
	case '000011': error=2; break;
	case '000001': error=1; break;
	case '000000': error=-1; break;

	//case [0,0,0,0,0,0]: error=-1; break;


}*/

//Serial.println(error);


	if((LFS[3]== 1 )&&(LFS[4]== 0 )&&(LFS[5]== 0 ))  { error = 3;limitReached=false;} //car must turn to the right (All the sensors are between the dotted line and the full line)
	else if((LFS[3]== 1 )&&(LFS[4]== 1 )&&(LFS[5]== 0 ))  { error = 3;limitReached=false;} //The car is over the white line: error
	else if((LFS[3]== 0 )&&(LFS[4]== 1 )&&(LFS[5]== 1 ))  { error = 2; limitReached=false;} //The car has to turn to the right (the two sensors on the right are on the full line)
	else if((LFS[3]== 0 )&&(LFS[4]== 0 )&&(LFS[5]== 1 ))  { error = 1;limitReached=false;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want
	else if((LFS[3]== 0 )&&(LFS[4]== 0 )&&(LFS[5]== 0 ))  { error = -1;limitReached=false;}



/*
	else if((LFS[0]== 1 )&&(LFS[1]== 0 )&&(LFS[2]== 0 ))  { error = 3;limitReached=false;} //car must turn to the right (All the sensors are between the dotted line and the full line)
	else if((LFS[0]== 1 )&&(LFS[1]== 1 )&&(LFS[2]== 0 ))  { error = 3;limitReached=false;} //The car is over the white line: error
	else if((LFS[0]== 0 )&&(LFS[1]== 1 )&&(LFS[2]== 1 ))  { error = 2; limitReached=false;} //The car has to turn to the right (the two sensors on the right are on the full line)
	else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 1 ))  { error = 1;limitReached=false;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want
	else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 0 ))  { error = -1;limitReached=false;}
*/

//car must turn to the right (All the sensors are between the dotted line and the full line)
	//else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 1 )&&(LFS[3]== 1 ))  { error = 2; limitReached=false;}




	//else if((LFS[0]== 0 )&&(LFS[1]== 1 )&&(LFS[2]== 1 )&&(LFS[3]== 1 ))  { error = -5;limitReached=false;}
	//else if((LFS[0]== 1 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 0 ))  { error = -10;limitReached=false;delay(500);} //car must turn to the right (Middle sensor is on the dotted line)


	/*Serial.print(LFS[0]);
	Serial.print(LFS[1]);
	Serial.print(LFS[2]);
	Serial.println(LFS[3]);

	Serial.println(error);*/
	corrigeer();


}



void Motor::corrigeer(){
	//Serial.println("corrigeer");
	Kp=12;
	Ki=0;
	Kd=7;

	if(!limitReached){
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




}
