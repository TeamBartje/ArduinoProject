#include <Motor.h>
Motor motor;
int nutijd=0; 
int previoustijd;
int duration;
int i=0;





void setup() {
 Serial.begin(9600);
}

void loop() {
    previoustijd=nutijd;
     nutijd=millis();
    duration=nutijd-previoustijd;

   if(i==50){
      Serial.println(duration);
      
    }
    i++;

    
  motor.bepaalPID();

  


  

}
