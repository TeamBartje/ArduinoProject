void setup() {
  Serial.begin(9600);
  pinMode(LFSB0, INPUT);
  pinMode(LFSB1, INPUT);
  pinMode(LFSB2, INPUT);
  pinMode(LFSB3, INPUT);
}

void loop() {
  readLFS();
  calculatePID();
  motorPID();

}
