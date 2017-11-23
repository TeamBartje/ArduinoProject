#ifndef Motor_h
#define Motor_h

#include "Arduino.h"

class Motor{
	public:
		Motor();
		void vooruit(int sA, int rA, int sB, int rB);
		void achteruit(int sA, int rA, int sB, int rB);
		void rechtsGewoon(int sA, int rA, int sB, int rB);
		void rechtsScherp(int sA, int rA, int sB, int rB);
		void linksScherp(int sA, int rA, int sB, int rB);
		void linksGewoon(int sA, int rA, int sB, int rB);
		
		int sA;
		int sB;
		int rA;
		int rB;


	private:





};
#endif
