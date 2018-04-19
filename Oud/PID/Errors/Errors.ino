void readLFS(){
  LFS[0]=digitalRead(LFSB0); //sensor middenas
  LFS[1]=digitalRead(LFSB1); //linkse sensor van de 3 aan de zijkant
  LFS[2]=digitalRead(LFSB2); //midden sensor van de 3 aan de zijkant
  LFS[3]=digitalRead(LFSB3); //buitenste sensor van de 3 aan de zijkant
  
   if((LFS[0]== 0 )&&(LFS[1]== 1 )&&(LFS[2]== 1 )&&(LFS[3]== 0 ))  {mode = FOLLOWING_LINE; error = 2;} //The car is over the white line: error
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 1 )&&(LFS[3]== 1 ))  {mode = FOLLOWING_LINE; error = 1;} //The car has to turn to the right (the two sensors on the right are on the full line)
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 1 ))  {mode = FOLLOWING_LINE; error = 0;} //the sensor on the right is on the full line, the sensor next to it is just next to the full line, this is the situation we want
  else if((LFS[0]== 0 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 0 ))  {mode = FOLLOWING_LINE; error = -1;} //car must turn to the right (All the sensors are between the dotted line and the full line)
  else if((LFS[0]== 1 )&&(LFS[1]== 0 )&&(LFS[2]== 0 )&&(LFS[3]== 0 ))  {mode = FOLLOWING_LINE; error = -2;} //car must turn to the right (Middle sensor is on the dotted line)
}

