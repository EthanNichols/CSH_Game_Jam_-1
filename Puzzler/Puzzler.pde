
void setup() {
  
  fullScreen();
  background(100);
 
  createPlayers();
  createBoxes();
}

void draw() {
  background(100);
  
  playerDraw();
  boxesDraw();
}

void keyPressed() {
  playerMove();
  boxCollision();
}