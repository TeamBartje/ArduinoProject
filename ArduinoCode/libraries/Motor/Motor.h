#ifndef Motor_h
#define Motor_h

#include "Arduino.h"

class Motor{
	public:
		Motor();
		void vooruit(int sA, int rA, int sB, int rB);
		void achteruit(int sA, int rA, int sB, int rB);
		void rechts(int sA, int rA, int sB, int rB);
		void links(int sA, int rA, int sB, int rB);

		int sA;
		int sB;
		int rA;
		int rB;


	private:





};
#endif
