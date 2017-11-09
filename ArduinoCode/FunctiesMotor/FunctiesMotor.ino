#define snelheidA 3
#define snelheidB 11
#define richtingA 12
#define richtingB 13
#define BUTTON 7

int sA=100;
int rA = 0;
int sB = 100;
int rB=0;
int gewoonVerhouding=0.8;
int scherpVerhouding=0.5;
void setup() {
  pinMode(snelheidA,OUTPUT);
  pinMode(snelheidB,OUTPUT);
  pinMode(richtingA,OUTPUT);
  pinMode(richtingB,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  vooruit(sA,rA,sB,rB);
  rechtsGewoon(sA,rA,sB,rB);
  delay(5000)
}


  void vooruit(int sA, int rA, int sB, int rB){
    Serial.println("Vooruit rijden");
    digitalWrite(richtingA,rA);
    digitalWrite(richtingB,rB);
    analogWrite(snelheidA,sA);
    analogWrite(snelheidB,sB);
  }

   void rechtsGewoon(int sA, int rA, int sB, int rB){
    Serial.println("Corrigeren rechts gewoon");
    digitalWrite(richtingA,rA);
    digitalWrite(richtingB,rB);
    analogWrite(snelheidA,sA);
    analogWrite(snelheidB,(gewoonVerhouding*sB));
  }

   void linksGewoon(int sA, int rA, int sB, int rB){
    Serial.println("Corrigeren links gewoon");
    digitalWrite(richtingA,rA);
    digitalWrite(richtingB,rB);
    analogWrite(snelheidA,(gewoonVerhouding*sA));
    analogWrite(snelheidB,sB);
  }

   void rechtsScherp(int sA, int rA, int sB, int rB){
    Serial.println("Corrigeren rechts scherp");
    digitalWrite(richtingA,rA);
    digitalWrite(richtingB,rB);
    analogWrite(snelheidA,sA);
    analogWrite(snelheidB,(scherpVerhouding*sB));
  }

   void linksScherp(int sA, int rA, int sB, int rB){
    Serial.println("Corrigeren links links");
    digitalWrite(richtingA,rA);
    digitalWrite(richtingB,rB);
    analogWrite(snelheidA,(linksVerhouding*sA));
    analogWrite(snelheidB,sB);
  }

  void achteruit(int sA, int rA, int sB, int rB){
    int tijd=0;
    while(tijd<50){
    Serial.println("Vooruit rijden");
    digitalWrite(richtingA,!rA);
    digitalWrite(richtingB,!rB);
    analogWrite(snelheidA,sA);
    analogWrite(snelheidB,sB);
    tijd=tijd+5;
   }
   tijd=0;
  }


  



