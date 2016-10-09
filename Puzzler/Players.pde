
//Create the players
player p1;
player p2;

class player {
  //Set the variables of the players
  int Xgrid = 0;
  int Ygrid = 0;
  int size = 32;
  String moveDirection;
  int pImg; 
  
  //Draw the players with their colors at their location
  void display() {
    fill(pImg);
    rect(Xgrid * size, Ygrid * size, size, size); 
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
  p1.pImg = color(200, 100, 50);
  p2.pImg = color(100, 50, 200);
}


void playerMove(){
  //Check for the Y movement of the player
  //Move the first player
  if (keyCode == UP) {
    p1.Ygrid -= 1;
    p1.moveDirection = "up";
  } else if (keyCode == DOWN) {
    p1.Ygrid += 1;
    p1.moveDirection = "down";
  }
  
  //Check for the Y movement of the player
  //Move the first player
  if (keyCode == LEFT) {
    p1.Xgrid -= 1;
    p1.moveDirection = "left";
  } else if (keyCode == RIGHT) {
    p1.Xgrid += 1;
    p1.moveDirection = "right";
  }
  
  //Check for the Y movement of the player
  //Move the second player
  if (key == 'w') {
    p2.Ygrid -= 1;
    p2.moveDirection = "up";
  } else if (key == 's') {
    p2.Ygrid += 1;
    p2.moveDirection = "down";
  }
  //Check for the X movement of the player
  //Move the second player
  if (key == 'a') {
    p2.Xgrid -= 1;
    p2.moveDirection = "left";
  } else if (key == 'd') {
    p2.Xgrid += 1;
    p2.moveDirection = "right";
  }
}

//Draw both players in their respective locations
void playerDraw() {
  p1.display();
  p2.display();
}