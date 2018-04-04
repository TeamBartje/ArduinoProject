




/*
  SD card read/write

 This example shows how to read and write data to and from an SD card file
 The circuit:
 * SD card attached to SPI bus as follows:
 ** MOSI - pin 11
 ** MISO - pin 12
 ** CLK - pin 13
 ** CS - pin 4 (for MKRZero SD: SDCARD_SS_PIN)

 created   Nov 2010
 by David A. Mellis
 modified 9 Apr 2012
 by Tom Igoe

 This example code is in the public domain.

 */

#include <SPI.h>
#include <SD.h>
#include <EEPROM.h>

File myFile;
String fileName="file";
String commando="";
void setup() {

  Serial.begin(9600);
  while (!Serial) {
  }
  
  if (!SD.begin(4)) {
    Serial.println("initialization failed!");
    return;
  }


  
  if(EEPROM[0]==0){
    EEPROM[0]=1;
    }
   else{
    EEPROM[0]=EEPROM[0]+1;
    }

    fileName.concat(EEPROM[0]);
    fileName.concat(".txt");
    Serial.println(fileName);
  myFile = SD.open(fileName, FILE_WRITE);
  //myFile.println("hallo");
  myFile.close();
  printOpSD("initialiseren");

/*

  // re-open the file for reading:
  myFile = SD.open("test.txt");
  if (myFile) {
    Serial.println("test.txt:");

    // read from the file until there's nothing else in it:
    while (myFile.available()) {
      Serial.write(myFile.read());
    }
    // close the file:
    myFile.close();
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
  }*/
}

void loop() {
  
leesVanMonitor();

    }



void leesVanMonitor(){
  
  while(Serial.available() > 0){
     delay(2);
      commando=commando+ (char)Serial.read();
}
      if(commando!=""){
      printOpSD(commando);
      commando="";
      }
  
  }




void printOpSD(String zin){

  myFile = SD.open(fileName, FILE_WRITE);
  myFile.println(zin);
  myFile.close();
  Serial.println(zin);
  
  
  }



































/*
  SD card read/write

 This example shows how to read and write data to and from an SD card file
 The circuit:
 * SD card attached to SPI bus as follows:
 ** MOSI - pin 11
 ** MISO - pin 12
 ** CLK - pin 13
 ** CS - pin 4 (for MKRZero SD: SDCARD_SS_PIN)

 created   Nov 2010
 by David A. Mellis
 modified 9 Apr 2012
 by Tom Igoe

 This example code is in the public domain.

 */
/*
#include <SPI.h>
#include <SD.h>
#include <EEPROM.h>
File myFile;

void setup() {

  Serial.begin(9600);
  while (!Serial) {
  }


  Serial.print("Initializing SD card...");
  Serial.println("initialization done.");

  File myFile = SD.open("log1.txt", FILE_WRITE);
  myFile.println("hallo");
  myFile.close();
 Serial.println("ok");*/
 /* 
EEPROM[0]=0;
  if(EEPROM[0]==0){
    EEPROM[0]=1;
    }
   else{
    EEPROM[0]=EEPROM[0]+1;
    }
*/
    
/*
    
   Serial.println(EEPROM[0]);
    String fileName="file";
    fileName.concat(EEPROM[0]);
    fileName.concat(".txt");
    Serial.println("opening file: "+ fileName);
    File myFile=SD.open(fileName, FILE_WRITE);
    //myFile = SD.open(fileName);
    myFile.println(fileName);
    myFile.close();
    Serial.println("ok");
    
    
  
}*/
/*
void loop() {
 /*while(!Serial.available()){
  testInput();
 }*/
   
    /*
    
}*/
/*
void testInput(){
   if(Serial.read()=='w'){
      writeToSD();
      Serial.println("w");
      }
      if(Serial.read()=='r'){
        readFromSD();
        Serial.println("r");
        }
    
  
  }

void writeToSD(){
    myFile = SD.open("test.txt");
    Serial.print("Writing to test.txt...");
    myFile.println("Dit is de tweede test");
    myFile.close();
    Serial.println("done.");

  
 
  
  }

  void readFromSD(){
    
    myFile = SD.open("test.txt");
  if (myFile) {
    Serial.println("test.txt:");

    // read from the file until there's nothing else in it:
    while (myFile.available()) {
      Serial.write(myFile.read());
    }
    // close the file:
    myFile.close();
  } else {
    // if the file didn't open, print an error:
    Serial.println("error opening test.txt");
  }
}
    */
    
