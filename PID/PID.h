int mode = 0;

# define STOPPED 0
# define FOLLOWING_LINE 1
# define NO_LINE 2

//const int power = 500;
const int iniMotorPower = 255;
const int adj = 1;
float adjTurn = 8;

const int ledPin = 13;
const int buttonPin = 9;

// LFSensor in the middle of the car is "0"
const int LFS0 = 12; 
const int LFS1 = 18; 
const int LFS2 = 17; 
const int LFS3 = 16;


int LFS[4]={0, 0, 0, 0};

// PID controller
float Kp=50;
float Ki=0;
float Kd=0;

float error=0, P=0, I=0, D=0, PIDvalue=0;
float previousError=0, previousI=0;

#define RIGHT 1
#define LEFT -1

//Servo leftServo;
//Servo rightServo;