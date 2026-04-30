class Obstacle {
  int x, y, w, h, speed, health;
  PImage obst1;
  char idir;
  
  //Constructor
  Obstacle(int x, int y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 100;
    speed = 2;
    health = 75;
    if(int(random(4)) ==2) {
     idir = 'w';
     x = random(width);
     y = height + 100;
   } else if (int(random(3))==1) {
     idir = 'd';
     x = -100;
     y = random(height);
   } else if(int(random(2))==1) {
     idir = 'a';
     x = width+100;
     y = random(height);
   } else {
     idir = 's';
     x = random(width);
     y = -100;
   }
   obst1 = loadImage("tankobstacle.png");
    
   }
   void display() {
     imageMode(CENTER);
     image(obst1,x,y);
     rect(x,y,w,h);
     
   }
    void move() { 
      x = x + speed;
      if(x > width) {
        x = 0;
      }
   }
   boolean reachedEdge() {
     return x >= width+150 || x <= -150 || y > height + 150 || y < -150;
  }
}
