#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13

void setup(){
  pinMode(snelheidA,OUTPUT);
  pinMode(snelheidB,OUTPUT);
  pinMode(richtingA,OUTPUT);
  pinMode(richtingB,OUTPUT);
}
void motorPID()
  {
  
  int sA = 200 - iniMotorPower - PIDvalue;
  int sB = 200 + iniMotorPower*adj - PIDvalue;
  
  // The motor speed should not exceed the max PWM value
   constrain(sA, 145, 255);
   constrain(sB, 145, 255);  

  digitalWrite(richtingA,rA);
  digitalWrite(richtingB,rB);
  analogWrite(snelheidA,sA);
  analogWrite(snelheidB,sB);
  }
