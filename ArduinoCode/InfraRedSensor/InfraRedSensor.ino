int sensor=12;
void setup() {
  
pinMode(sensor, INPUT);
Serial.begin(9600);

}

void loop() {
  delay(500);
  
  Serial.println(digitalRead(sensor));

}
