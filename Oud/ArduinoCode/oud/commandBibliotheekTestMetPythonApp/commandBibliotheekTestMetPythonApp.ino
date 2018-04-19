#include <SoftwareSerial.h>
#include <Blue.h>
Blue blue;
SoftwareSerial BTSerial(2, 3); // TX | RX
String zin="";

void setup()
{


Serial.begin(9600); 
Serial.println("Ontvangen Waarden: ");
BTSerial.begin(9600); // HC-05 default speed in AT command more
}
void loop()
{
  checkBluetooth();
  
 
}



void checkBluetooth(){
  
  if(BTSerial.available()){
  while(BTSerial.available()){  
    zin=zin+((char)BTSerial.read());
  }
  //blue.verwerkInkomendCommando(zin);
  if((char)zin.charAt(0)=='$'){
    verwerkCommando(zin);
    }
  else{
    Serial.println(zin);  
    }
  
  zin="";
  
  
  
  }


}


void verwerkCommando(String zin){
      Serial.println("commando:" + zin);
  
  
  
  
  }

