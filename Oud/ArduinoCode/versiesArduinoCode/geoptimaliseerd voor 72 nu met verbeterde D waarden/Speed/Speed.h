#ifndef Speed_h
#define Speed_h

#include "Arduino.h"

class Speed{
	public:
		Speed();
		double getSpeed();
		void getDuration();


	private:
		void registreerPuls();
		void berekenSnelheid();

		int actief=false;
		int sensor=10;
		int rotatie=0;
		float huidigeTijd=0;
		float vorigeTijd=0;
		double tijdsduur=0;
		float temp=0;
		float v=0;
		unsigned long t=0;
		int wielOmtrek=0.2;





};
#endif
