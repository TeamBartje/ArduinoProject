#ifndef Motor_h
#define Motor_h

#include "Arduino.h"
#include "Bluetooth.h"
#include "Speed.h"

class Motor{
	public:
		Motor();
		void rij(int correctie);
		void bepaalPID();
		void corrigeer();
		void verstuurSnelheid();
		void verstuurTag();
		int sA;
		int sB;
		int rA;
		int rB;
		int correctie;
		double P;
		double I;
		double D;
		double previousError;
		double PIDvalue;
		double Kp;
		double Ki;
		double Kd;
		int snelheid;
		String arrayString;
		boolean limitReached=false;


	private:





};
#endif
