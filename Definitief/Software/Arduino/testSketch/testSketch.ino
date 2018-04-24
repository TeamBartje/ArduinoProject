#include <Motor.h>
Motor motor;



void setup() {
 Serial.begin(9600);
}

void loop() {
  

  motor.bepaalPID();

  


  

}
