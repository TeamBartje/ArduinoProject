#include <Bluetooth.h>
Bluetooth bluetooth;

int snelheid=0;
void setup() {
  Serial.begin(9600);


}

void loop() {
  snelheid=snelheid+1;
  delay(100);
  bluetooth.stuurSnelheid(snelheid);

}
