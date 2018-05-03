String incomingByte = "";   // for incoming serial data
boolean rfidavailable=false;
int huidigetijd=0;
int vorigetijd=0;
//#include <SoftwareSerial.h>
//SoftwareSerial SerSerial(2, A3); // TX | RX


void setup() {
        Serial.begin(9600);     // opens serial port, sets data rate to 9600 bps
}

void loop() {

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
          Serial.print(incomingByte);
          Serial.println();
          rfidavailable=false;
          incomingByte="";
          }
        
}
