
tiles[] map = {};
int tileIndex = 0;

class tiles {
  int id = tileIndex;
  int Xgrid;
  int Ygrid;
  int size = 32;
  PImage img = loadImage("images/tile.png");
  
  void display() {
    image(img, Xgrid * size, Ygrid * size);
  }
}

void tileCollision() {
  
  boolean player1Collision = false;
  boolean player2Collision = false;
  for (int i=0; i < tileIndex; i++) {
    if (p1.Xgrid == map[i].Xgrid && p1.Ygrid == map[i].Ygrid) {player1Collision = true;}
    else if (p2.Xgrid == map[i].Xgrid && p2.Ygrid == map[i].Ygrid) {player2Collision = true;} 
  }
  
  if (!player1Collision) {
    if (p1.moveDirection == "up") {p1.Ygrid++;}
    if (p1.moveDirection == "down") {p1.Ygrid--;}
    if (p1.moveDirection == "left") {p1.Xgrid++;}
    if (p1.moveDirection == "right") {p1.Xgrid--;}
  }
  
  if (!player2Collision) {
    if (p2.moveDirection == "up") {p2.Ygrid++;}
    if (p2.moveDirection == "down") {p2.Ygrid--;}
    if (p2.moveDirection == "left") {p2.Xgrid++;}
    if (p2.moveDirection == "right") {p2.Xgrid--;}
  }
}

void createTile(int Xgrid, int Ygrid) {
  map = (tiles[])append(map, new tiles());
  map[tileIndex].Xgrid = Xgrid;
  map[tileIndex].Ygrid = Ygrid;
  tileIndex++;
}

void resetTiles() {
  for (int i=0; i < tileIndex; i++) {
    map[i].Xgrid = -10;
  }
}

void mapDraw() {
  for (int i=0; i < tileIndex; i++) {
    map[i].display();
  }
}