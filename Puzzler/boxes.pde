
//Create an array for the boxes
//Set the amount of boxes created
boxes[] box = {};
int boxIndex = 0;

class boxes {
  int id = boxIndex;
  int Xgrid = 3;
  int Ygrid = 3;
  int size = 32;
  int pImg = color(200);
  
  void display() {
    fill(pImg);
    rect(Xgrid * size, Ygrid * size, size, size);
  }
}

void createBoxes() {
  for (int i = 0; i < 10; i++) {
    box = (boxes[])append(box, new boxes());
    boxIndex++;
  }
}

void boxCollision() {
    
  int boxMoved = -1;
  int player = 0;
  
  for (int i=0; i < boxIndex; i++) { 
    if (p1.Xgrid == box[i].Xgrid && p1.Ygrid == box[i].Ygrid) {
      if (p1.moveDirection == "up") {box[i].Ygrid--;}
      if (p1.moveDirection == "down") {box[i].Ygrid++;}
      if (p1.moveDirection == "left") {box[i].Xgrid--;}
      if (p1.moveDirection == "right") {box[i].Xgrid++;}
      boxMoved = i;
      player = 1;
      break;
    }
      
    if (p2.Xgrid == box[i].Xgrid && p2.Ygrid == box[i].Ygrid) {
      if (p2.moveDirection == "up") {box[i].Ygrid--;}
      if (p2.moveDirection == "down") {box[i].Ygrid++;}
      if (p2.moveDirection == "left") {box[i].Xgrid--;}
      if (p2.moveDirection == "right") {box[i].Xgrid++;}
      boxMoved = i;
      player = 2;
      break;
    }
  }
  
  if (boxMoved != -1) {
    boxCollision2(boxMoved, player);
  }
}

void boxCollision2(int boxMoved, int player) {
  
  boolean Checked = false;
  if (player == 1) {
    if (box[boxMoved].Xgrid == p2.Xgrid && box[boxMoved].Ygrid == p2.Ygrid) {
      if (p1.moveDirection == "up") {box[boxMoved].Ygrid++; p1.Ygrid++;}
      else if (p1.moveDirection == "down") {box[boxMoved].Ygrid--; p1.Ygrid--;}
      else if (p1.moveDirection == "left") {box[boxMoved].Xgrid++; p1.Xgrid++;}
      else if (p1.moveDirection == "right") {box[boxMoved].Xgrid--; p1.Xgrid--;}
      Checked = true;
    }
  } else if (player == 2) {
    if (box[boxMoved].Xgrid == p1.Xgrid && box[boxMoved].Ygrid == p1.Ygrid) {
      if (p2.moveDirection == "up") {box[boxMoved].Ygrid++; p2.Ygrid++;}
      else if (p2.moveDirection == "down") {box[boxMoved].Ygrid--; p2.Ygrid--;}
      else if (p2.moveDirection == "left") {box[boxMoved].Xgrid++; p2.Xgrid++;}
      else if (p2.moveDirection == "right") {box[boxMoved].Xgrid--; p2.Xgrid--;}
      Checked = true;
    }
  }
  
  if (!Checked) {
    println("not a person");
    for (int i=0; i < boxIndex; i++) {
      println("testing all boxes");
      if (boxMoved != i) {
        println("different Boxes");
        if (box[boxMoved].Xgrid == box[i].Xgrid && box[boxMoved].Ygrid == box[i].Ygrid) {
          println("Stacked Boxes");
          if (player == 1) {
            println("Move Boxes");
            if (p1.moveDirection == "up") {box[boxMoved].Ygrid++; p1.Ygrid++;}
            else if (p1.moveDirection == "down") {box[boxMoved].Ygrid--; p1.Ygrid--;}
            else if (p1.moveDirection == "left") {box[boxMoved].Xgrid++; p1.Xgrid++;}
            else if (p1.moveDirection == "right") {box[boxMoved].Xgrid--; p1.Xgrid--;}
            break;
        } else if (player == 2) {
            if (p2.moveDirection == "up") {box[boxMoved].Ygrid++; p2.Ygrid++;}
            else if (p2.moveDirection == "down") {box[boxMoved].Ygrid--; p2.Ygrid--;}
            else if (p2.moveDirection == "left") {box[boxMoved].Xgrid++; p2.Xgrid++;}
            else if (p2.moveDirection == "right") {box[boxMoved].Xgrid--; p2.Xgrid--;}
            break;          
          }
        }
      }
    }
  }
}

void boxesDraw() {
  for (int i=0; i < boxIndex; i++) {
    box[i].display();
  }
}