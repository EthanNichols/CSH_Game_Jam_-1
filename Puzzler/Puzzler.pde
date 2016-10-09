
void setup() {
  size(640,640);
  background(100);
 
  createPlayers();
  createBoxes();
  createTeleporters();
  //levelManager();

}

void draw() {
  background(100);
  //mapDraw();
  goal1.run();
  goal2.run();
  teleportersDraw();
  playerDraw();
  boxesDraw();


}

void keyPressed() {
  playerMove();
  boxCollision();
  playerCollision();
}