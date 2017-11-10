#include <Motor.h>
Motor motor;


void setup() {
 Serial.begin(9600);
 

}

void loop() {
  motor.vooruit(3,4,5,6);
  motor.achteruit(3,4,5,6);
  motor.linksGewoon(3,4,5,6);
  motor.linksScherp(3,4,5,6);
  motor.rechtsGewoon(3,4,5,6);
  motor.rechtsScherp(3,4,5,6);
  

}
