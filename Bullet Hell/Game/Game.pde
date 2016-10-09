//bullet[] bullets = {};
player p1;
player p2;
projectile[] projectiles = {};
int projectileIndex = 0;
enemy enemy;
void setup(){
  //fullScreen();
  size(600,600);
  background(0);
  p1 = new player();
  p2 = new player();
  enemy = new enemy(300,300);
}

void draw(){
  background(0);
  p1.run();
  p2.run();
  projectiles = (projectile[])append(projectiles, new projectile((p1.x+p1.size/2), p1.y));
  projectiles = (projectile[])append(projectiles, new projectile((p2.x+p2.size/2), p2.y));
  for(int i = 0; i < projectiles.length; i++){
    projectiles[i].run();
  }
  enemy.run();
  
}

void keyPressed(){
  if ( keyCode == UP){
    p1.vy = -5;
    p1.vx = 0;
  }
  if (keyCode == DOWN){
    p1.vy = 5;
    p1.vx = 0;
  }
  if (keyCode == LEFT){
    p1.vx = -5;
    p1.vy = 0; 
  }
  if (keyCode == RIGHT){
    p1.vx = 5;
    p1.vy = 0;
  }
  if (key == 'a'){
    p2.vx = -3;
  }
  if (key == 'w'){
    p2.vy = -3;
  }
  if (key == 's'){
    p2.vy = 3;
  }
  if (key == 'd'){
    p2.vx = 3;
  }
} 