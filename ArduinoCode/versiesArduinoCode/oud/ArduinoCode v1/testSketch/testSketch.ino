#include <Motor.h>
#include <Speed.h>
Motor motor;
Speed speed1;

void setup() {
 Serial.begin(9600);
 

}

void loop() {
  //Serial.println("halo");
  //motor.vooruit(255,1,255,0);
  motor.bepaalPID();
  


  

}
