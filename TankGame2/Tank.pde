// Emily Clayton | Tank | April 16, 2026
class Tank {
  //Member Variable
  float x, y, w, h, speed, health;
  PImage iTankW, iTankA, iTankS, iTankD;
  char idir;
  int turretCount, laserCount;
  
  //Constructor
  Tank() {
    x = 100.0;
    y = 100.0;
    w = 100.0;
    h = 100.0;
    speed = 2.0;
    health = 75.0;
    iTankW = loadImage("tankW.png");
    iTankA = loadImage("tankA.png");
    iTankS = loadImage("tankS.png");
    iTankD = loadImage("tankD.png");
    idir = 'w';
    turretCount = 1;
    laserCount = 100;
   }
   
   void display() {
     imageMode(CENTER);
     image(iTankW,x,y);
     if(idir == 'w') {
       image(iTankW,x,y);
     } else if(idir == 'a') {
       image(iTankA,x,y);
     } else if(idir == 's') {
       image(iTankS,x,y);
     } else if(idir == 'd') {
       image(iTankD,x,y);
     }
   }
    void move(char dir) {
    if(dir == 'w') {
       y = y - speed;
     } else if(dir == 'a') {
       x = x - speed;
     } else if(dir == 's') {
       y = y + speed;
     } else if(dir == 'd') {
       x = x + speed;
     }
    }
}
