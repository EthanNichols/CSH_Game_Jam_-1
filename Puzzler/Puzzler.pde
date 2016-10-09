
void setup() {
  
  fullScreen();
  background(100);
 
  createPlayers();
  createBoxes();
  createTeleporters();
}

void draw() {
  background(100);
  
  //scale(5, 5);
  
  teleportersDraw();
  playerDraw();
  boxesDraw();
}

void keyPressed() {
  playerMove();
  boxCollision();
}