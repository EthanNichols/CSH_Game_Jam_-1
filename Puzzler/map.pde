
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

void createTile(int Xgrid, int Ygrid) {
  map = (tiles[])append(map, new tiles());
  map[tileIndex].Xgrid = Xgrid;
  map[tileIndex].Ygrid = Ygrid;
  tileIndex++;
}

void mapDraw() {
  for (int i=0; i < tileIndex; i++) {
    map[i].display();
  }
}