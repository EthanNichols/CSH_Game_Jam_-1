
float setScale = 1;
void setup() {
<<<<<<< 5809e921c7bcefeb2bba9734e6e7da322b8afa57
  size(640,640);
  background(100);
=======
  
  size(840, 640);
>>>>>>> Removed fullscreen, and set the screen resolution to 640*640 which allows a 20*20 grid for the tiles in th map.
 
  createPlayers();
  createTeleporters();
<<<<<<< 5809e921c7bcefeb2bba9734e6e7da322b8afa57
  //levelManager();

=======
  
  levelManager();
>>>>>>> Removed fullscreen, and set the screen resolution to 640*640 which allows a 20*20 grid for the tiles in th map.
}

void draw() {
  background(100);
<<<<<<< 5809e921c7bcefeb2bba9734e6e7da322b8afa57
  //mapDraw();
=======
  
  mapDraw();
  
>>>>>>> Removed fullscreen, and set the screen resolution to 640*640 which allows a 20*20 grid for the tiles in th map.
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