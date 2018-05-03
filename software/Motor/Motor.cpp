
#include "Arduino.h"
#include "Motor.h"
#include "Bluetooth.h"
#include "Speed.h"
//#include "Speed.h"
Speed speed1;
Bluetooth bluetooth;
#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13

int lfs1=8;
int lfs2=6;
int lfs3=5;
int lfs4=9;
int lfs5=A0;
int lfs6=A1;
int LFS[6];
double error;
String waarde;
int intwaarde;
char charwaarde[6];
boolean rechtersensoractief;
int starttijd=0;
int stoptijd=0;
//----------------------------------------------------nieuw voor rfid
String incomingByte = "";   // for incoming serial data
boolean rfidavailable=false;
int huidigetijd=0;
int vorigetijd=0;
//-----------------------------------------------------eind nieuw voor rfid



Motor::Motor(){
	//Serial.begin(9600);
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
	//Serial.println("test");



}



void Motor::rij(int correctie){


	snelheid=65;

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
	//Serial.println("test");
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



//Serial.println(error);

	if((LFS[3]== 1 )||(LFS[4]== 1 )||(LFS[5]== 1 )){
		rechtersensoractief=true;
		if((LFS[3]== 1 )&&(LFS[4]== 0 )&&(LFS[5]== 0 ))  { error = 4.6;limitReached=true;} //car must turn to the right (All the sensors are between the dotted line and the full line)
		else if((LFS[3]== 1 )&&(LFS[4]== 1 )&&(LFS[5]== 0 ))  { error = 3.2;limitReached=false;} //The car is over the white line: error
		else if((LFS[3]== 1 )&&(LFS[4]== 1 )&&(LFS[5]== 1 ))  { error = 2.8; limitReached=false;} //The car has to turn to the right (the two sensors on the right are on the full line)
		//else if((LFS[3]== 0 )&&(LFS[4]== 1 )&&(LFS[5]== 0 ))  { error = 2.5; limitReached=false;}
		else if((LFS[3]== 0 )&&(LFS[4]== 1 )&&(LFS[5]== 1 ))  { error = 2.3; limitReached=false;} //The car has to turn to the right (the two sensors on the right are on the full line)
		else if((LFS[3]== 0 )&&(LFS[4]== 0 )&&(LFS[5]== 1 ))  { error = 1.1;limitReached=false;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want

	}


	else if((LFS[0]== 1 )||(LFS[1]== 1 )||(LFS[2]== 1 )){
		rechtersensoractief=false;
		if((LFS[0]== 1 )&&(LFS[1]== 0 )&&(LFS[2]== 0 ))  { error = -1.1;limitReached=false;} //car must turn to the right (All the sensors are between the dotted line and the full line)
		else if((LFS[0]== 1 )&&(LFS[1]== 1 )&&(LFS[2]== 0 ))  { error = -2.3;limitReached=false;} //The car is over the white line: error
		else if((LFS[0]== 1 )&&(LFS[1]== 1 )&&(LFS[2]== 1 ))  { error = -2.8; limitReached=false;}
		//else if((LFS[3]== 0 )&&(LFS[4]== 1 )&&(LFS[5]== 0 ))  { error = -3.2; limitReached=false;}
		else if((LFS[0]== 0 )&&(LFS[1]== 1 )&&(LFS[2]== 1 ))  { error = -3.2; limitReached=false;} //The car has to turn to the right (the two sensors on the right are on the full line)
		else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 1 ))  { error = -4.6;limitReached=true;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want
	}

	else {
			if(rechtersensoractief==true){
				if(limitReached){
					error=2.3;
				}
				else{

					error = -1.3;
				}
			}
			else {
				if (limitReached){
					error=-2.3;
				}
				else{
					error = 0.8;
				}
			}
}


verstuurSnelheid();
corrigeer();
verstuurTag();
}


void Motor::corrigeer(){

	Kp=12;
	Ki=0;
	Kd=4;

		P = error;

		stoptijd=millis();
		if((stoptijd-starttijd)>500){
		if((error-previousError)>0){
		I = I + error;
		D = error-previousError;
		//Serial.println(D);
		previousError = error;
		starttijd=millis();
		}
}
		PIDvalue = (Kp*P) + (Ki*I) + (Kd*D);



		rij(PIDvalue);






}

void Motor::verstuurSnelheid(){
	bluetooth.stuurSnelheid();
}



void Motor::verstuurTag(){



	huidigetijd=millis();

        if (Serial.available() > 0) {
          rfidavailable=true;
                // read the incoming byte:
                incomingByte = incomingByte + String(Serial.read());

                //Serial.println();

                vorigetijd=huidigetijd;
                 /*tijdsduur=huidigetijd-vorigetijd;
                 vorigetijd=huidigetijd;*/
        }
        if((Serial.available()==0) && rfidavailable==true && (huidigetijd-vorigetijd>20)){
          //Serial.print(incomingByte);
          Serial.println();
					bluetooth.stuurRFID(incomingByte);
          rfidavailable=false;
          incomingByte="";
          }




}
