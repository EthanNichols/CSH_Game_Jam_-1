
String gamestate = "mainMenu";

void setup() {

  size(640,640);
  background(100);
 
  createPlayers();
  createTeleporters();
  
  levelManager();
}

void draw() {
  background(100);
  
  if (gamestate == "mainMenu") {
    mainMenu();
  } else if (gamestate == "pause") {
    pauseMenu();
    
  } else if (gamestate == "Youwin") {
    youWin();
  } else if (gamestate == "game") {
    mapDraw();
  
    goal1.run();
    goal2.run();
  
    teleportersDraw();
    playerDraw();
    boxesDraw();
  }
}

void keyPressed() {
  
  if (key == 'p') {
    gamestate = "pause";  
  } else if (key == 'r') {
    levelNumber--;
    nextLevel();
  }
  
  if (gamestate == "game") {
    playerMove();
    boxCollision();
    playerCollision();
    tileCollision();
  }
}

void mousePressed() {
 if (gamestate == "mainMenu" || gamestate == "pause") {
   MenuPressed();
 }
}