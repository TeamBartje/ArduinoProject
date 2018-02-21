void calculatePID()
{
  P = error;
  I = I + error;
  D = error-previousError;
  PIDvalue = (Kp*P) + (Ki*I) + (Kd*D);
  previousError = error;
}


void testLineFollowSensors()
{
     int LineFS0 = digitalRead(LFS0);
     int LineFS1 = digitalRead(LFS1);
     int LineFS2 = digitalRead(LFS2);
     int LineFS3 = digitalRead(LFS3);
     
     Serial.print ("LFS: M  0 1 2 3  R"); 
     Serial.print (LineFS0); 
     Serial.print (" ");
     Serial.print (LineFS1); 
     Serial.print (" ");
     Serial.print (LineFS2); 
     Serial.print (" ");
     Serial.print (LineFS3); 
     Serial.print (" -> ");
    
     Serial.print (" P: ");
     Serial.print (P);
     Serial.print (" I: ");
     Serial.print (I);
     Serial.print (" D: ");
     Serial.print (D);
     Serial.print (" PID: ");
     Serial.println (PIDvalue);
}
