// Emily Clayton | Apr 14 2026 | TankGame
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();
PImage bg;
int score;
Timer objTimer, puTimer;

void setup() {
  size(500, 500);
  bg = loadImage("clayton_tank.png");
  tank1 = new Tank();
  //obstacles.add(new Obstacle(250,250));
  //obstacles.add(new Obstacle(25,400));
  //obstacles.add(new Obstacle(150,200));
  score = 0;
  objTimer = new Timer(1000);
  objTimer.start();
  puTimer = new Timer(5000);
  puTimer.start();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  // Distribute powerups on a timer
  if(objTimer.isFinished()) {
    // Add power up
    powerups.add(new PowerUp());
    // Restart Timer
    puTimer.start();
  }
  
  // Display and remove power ups
  for(int i = 0; i < powerups.size(); i++) {
    PowerUp pu = powerups.get(i);
    pu.display();
    pu.move();
    if(pu.reachedEdge)) {
      powerups.remove(pu);
    }
    if(pu.intersect(t1)) {
      if(pu.type == 'h') {
        t1.health = t1.health + 100;
        powerups.remove(pu);
      } else if(pu.type == 'a') {
        t1.laserCount = t1.laserCount + 100;
        powerups.remove(pu);
      } else if(pu.type == 't') {
        t1.TurretCount = t1.turretCount + 1;
        powerups.remove(pu);
    }
  }
  
  
  //obstacles.add(new Obstacle(250, 250));

  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle o = obstacles.get(i);
    o.display();
    o.move();
    if(o.reachedEdge()) {
      obstacles.remove(i);
    }
  }
  tank1.display();
  scorePanel();
}



void scorePanel() {
  fill(127,127);
  rectMode(CENTER);
  rect(width/2,30,width,40);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score ,width/2,35);
  text("Health:" + t1.health ,width/2-150, 25);
  text("Ammo:" + t1.laserCount ,width/2+150, 25);
}

//void keyPressed

void mousePressed() {
  if(t1.turretCount == 1) {
    projectiles.add(new Projectile(t1.x-20, t1.y, dx * ));
  } else if(t1.turretCount==2) {
    projectiles.add(new Projectile(t1.x-20, t1.y, dx * ));
    projectiles.add(new Projectile(t1.x-20, t1.y, dx * ));
  }
  //projectiles.add(new Projectile(t1.x-20, t1.y, dx * ));
   //projectiles.add(new Projectile(int(tank1.x), int(tank1.y)));
}
void keyPressed() {
      if (key == 'w') {
        tank1.move('w');
      } else if (key == 's') {
        tank1.move('s');
      } else if(key == 'd') {
        tank1.move('d');
      } else if(key == 'a') {
        tank1.move('a');
      }
   }
