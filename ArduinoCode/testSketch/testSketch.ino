

#include <Motor.h>
Motor motor;


void setup() {
 Serial.begin(9600);
 

}

void loop() {
  //Serial.println("halo");
  //motor.vooruit(255,1,255,0);
  motor.bepaalPID();
  


  

}
