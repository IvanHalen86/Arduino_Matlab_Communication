
int analogPin = 1;
int analogPin2 = 2;
int i = 0;
int g = 0;
int sample = 20;

/* 
20 is the delay in ms. This correspond to a fs of 50Hz (1000/20 = 50)
In Matlab the Ts should be 0.01 (that correspond to 100 Hz). If 
Ts is 0.02 (that correspond to the same sampling rate setted in Arduino)
there will be a delay in sampling the data in Matlab.
Hence, the  Sampling time in the matlab code (Ts) should be more than 50hz
(lower than 0.02) to avid delays in the graph.
Anyway, it seems that the best combination is delay 20 in 
arduino and Ts = 0.01 in matlab. If more, it not work well

*/

void setup() 
{
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  Serial.begin(9600);
}

void loop() 
{
  i =  analogRead(A1);
  g =  analogRead(A2);
  Serial.print(i);
   Serial.print("\t");
   /*
serial.println allwos to prinf the secodn value n the same line of i.
the command Serial.print("\t") add a space between the two values
   */
  Serial.println(g);
   delay(sample);
}
