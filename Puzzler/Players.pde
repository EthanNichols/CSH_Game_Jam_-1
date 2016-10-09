
//Create the players
player p1;
player p2;

class player {
  //Set the variables of the players
  int Xgrid = 0;
  int Ygrid = 0;
  int size = 32;
  String moveDirection;
  PImage img; 
  boolean onGoal = false;
  
  //Draw the players with their colors at their location
  void display() {
    image(img, Xgrid * size, Ygrid * size); 
  }
}

//Create the two players for the game
void createPlayers() {
  //Create the players
  p1 = new player();
  p2 = new player();
  
  //Set the images of the players
  playerSetImg();
}

//Set the images for both players
void playerSetImg() {
  p1.img = loadImage("images/orangeCat.png");
  p2.img = loadImage("images/purpleCat.png");
}


void playerMove(){
  //Check for the Y movement of the player
  //Move the first player
  if (keyCode == UP) {
    p1.Ygrid -= 1;
    p1.moveDirection = "up";
    teleporterCollision(1);
  } else if (keyCode == DOWN) {
    p1.Ygrid += 1;
    p1.moveDirection = "down";
    teleporterCollision(1);
  }
  
  //Check for the Y movement of the player
  //Move the first player
  if (keyCode == LEFT) {
    p1.Xgrid -= 1;
    p1.moveDirection = "left";
    teleporterCollision(1);
  } else if (keyCode == RIGHT) {
    p1.Xgrid += 1;
    p1.moveDirection = "right";
    teleporterCollision(1);
  }
  
  //Check for the Y movement of the player
  //Move the second player
  if (key == 'w') {
    p2.Ygrid -= 1;
    p2.moveDirection = "up";
    teleporterCollision(2);
  } else if (key == 's') {
    p2.Ygrid += 1;
    p2.moveDirection = "down";
    teleporterCollision(2);
  }
  //Check for the X movement of the player
  //Move the second player
  if (key == 'a') {
    p2.Xgrid -= 1;
    p2.moveDirection = "left";
    teleporterCollision(2);
  } else if (key == 'd') {
    p2.Xgrid += 1;
    p2.moveDirection = "right";
    teleporterCollision(2);
  }
}

//Draw both players in their respective locations
void playerDraw() {
  //scale(5, 5);
  
  p1.display();
  p2.display();
}