#ifndef Bluetooth_h
#define Bluetooth_h

#include "Arduino.h"

class Bluetooth{
	public:
		Bluetooth();
		void schrijfiets(double snelheid);
		void stuurSnelheid();
		void ontvangIets();
		void stuurRFID();
		String zin;

	private:



};
#endif
