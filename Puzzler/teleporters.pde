teleporters[] teleporter = {};
int teleporterIndex = 0;

class teleporters {
  int id = teleporterIndex;
  int Xgrid = floor(random(width / 32));
  int Ygrid = floor(random(height / 32));
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
    teleporterIndex++;
  }
  
  setDestination();
}

void setDestination() {
  //Get information about the teleporters
  for (int i=0; i < teleporterIndex; i++)
  
    //Test for the teleporter ID, set the destination of the teleporter
    // 0 <--> 1, 2 <--> 3, 4 <--> 5
    if (teleporter[i].id == 0) {teleporter[i].destination = 1;}
    else if (teleporter[i].id == 1) {teleporter[i].destination = 0;}
    else if (teleporter[i].id == 2) {teleporter[i].destination = 3;}
    else if (teleporter[i].id == 3) {teleporter[i].destination = 2;}
    else if (teleporter[i].id == 4) {teleporter[i].destination = 5;}
    else if (teleporter[i].id == 5) {teleporter[i].destination = 4;}
}

void teleporterCollision(int player) {
  
  int teleporterOn = -1;
  
  for (int i=0; i < teleporterIndex; i++) {
    if (p1.Xgrid == teleporter[i].Xgrid && p1.Ygrid == teleporter[i].Ygrid && player == 1) {
      teleporterOn = i;
    }
    
    if (p2.Xgrid == teleporter[i].Xgrid && p2.Ygrid == teleporter[i].Ygrid && player == 2) {
      teleporterOn = i;
    }
  }
  
  if (teleporterOn != -1) {
    for (int i=0; i < teleporterIndex; i++) {
      if (teleporter[teleporterOn].destination == teleporter[i].id) {
        if (player == 1) {
          p1.Xgrid = teleporter[i].Xgrid; 
          p1.Ygrid = teleporter[i].Ygrid; 
        } else if (player == 2) {
          p2.Xgrid = teleporter[i].Xgrid;
          p2.Ygrid = teleporter[i].Ygrid;
        }
      }
    }
  }
}

void teleportersDraw() {
  //Draw every teleporter
  for (int i=0; i < teleporterIndex; i++) {
    teleporter[i].display();
  }
}