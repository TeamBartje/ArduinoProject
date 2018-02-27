#include <Speed.h>
#include <Motor.h>
Motor motor;
Speed speed;


void setup() {
 Serial.begin(9600);
 

}

void loop() {
  //Serial.println("halo");
  //motor.vooruit(255,1,255,0);
  //motor.bepaalPID();
  speed.getSpeed();
  


  

}
