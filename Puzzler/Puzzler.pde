
void setup() {
  
  fullScreen();
  background(100);
 
  createPlayers();
  createBoxes();
  //createTeleporters();
}

void draw() {
  background(100);
  goal1.run();
  goal2.run();
  playerDraw();
  boxesDraw();
    if(p1.onGoal && p2.onGoal){
      println("YOU WON");
    }
}

void keyPressed() {
  playerMove();
  boxCollision();
}