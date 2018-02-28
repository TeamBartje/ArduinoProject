#ifndef Motor_h
#define Motor_h

#include "Arduino.h"

class Motor{
	public:
		Motor();
		void rij(int correctie);
		void bepaalPID();
		void corrigeer();
		int sA;
		int sB;
		int rA;
		int rB;
		int correctie;
		int P;
		int I;
		int D;
		int previousError;
		int PIDvalue;
		int Kp;
		int Ki;
		int Kd;
		int snelheid;
		String arrayString;
		boolean limitReached=false;


	private:





};
#endif
