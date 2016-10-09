
teleporters[] teleporter = {};
int teleporterIndex = 0;

class teleporters {
  int id = boxIndex;
  int Xgrid = 3;
  int Ygrid = 3;
  int size = 32;
  int destination;
  PImage img = loadImage("images/teleporter.png");
  
  void display() {
    image(img, Xgrid * size, Ygrid * size, size, size);
  }
}

void createTeleporters() {
  for (int i = 0; i < 6; i++) {
    teleporter = (teleporters[])append(teleporter, new teleporters());
    boxIndex++;
  }
  
  setDestination();
}

void setDestination() {
  for (int i=0; i < teleporterIndex; i++)
    if (teleporter[teleporterIndex].id == 0) {teleporter[teleporterIndex].destination = 1;}
    else if (teleporter[teleporterIndex].id == 1) {teleporter[teleporterIndex].destination = 0;}
    else if (teleporter[teleporterIndex].id == 2) {teleporter[teleporterIndex].destination = 3;}
    else if (teleporter[teleporterIndex].id == 3) {teleporter[teleporterIndex].destination = 2;}
    else if (teleporter[teleporterIndex].id == 4) {teleporter[teleporterIndex].destination = 5;}
    else if (teleporter[teleporterIndex].id == 5) {teleporter[teleporterIndex].destination = 4;}
}

void teleporterCollision() {
   
}