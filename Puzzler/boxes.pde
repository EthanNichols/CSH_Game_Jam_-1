
//Create an array for the boxes
//Set the amount of boxes created
boxes[] box = {};
int boxIndex = 0;

class boxes {
  //Create variables for the 
  int id = boxIndex;
  int Xgrid = floor(random(width / 32));
  int Ygrid = floor(random(height / 32));
  int size = 32;
  PImage img = loadImage("images/box.png");
  
  //Draw all of the boxes with the right image
  void display() {
    image(img, Xgrid * size, Ygrid * size, size, size);
  }
}

void createBoxes() {
  //Create an amount of boxes
  //Increase the number of boxes that have been created
  for (int i = 0; i < 10; i++) {
    box = (boxes[])append(box, new boxes());
    boxIndex++;
  }
}

void boxCollision() {
  
  int boxMoved = -1;
  int player = 0;
  
  //Get information about the boxes
  for (int i=0; i < boxIndex; i++) { 
    
    //Test if the player is on a box
    if (p1.Xgrid == box[i].Xgrid && p1.Ygrid == box[i].Ygrid) {
      
      //Move the box relative to the direction the player moved
      if (p1.moveDirection == "up") {box[i].Ygrid--;}
      if (p1.moveDirection == "down") {box[i].Ygrid++;}
      if (p1.moveDirection == "left") {box[i].Xgrid--;}
      if (p1.moveDirection == "right") {box[i].Xgrid++;}
      
      //Set the box that was moved
      //Set the player who moved the box
      boxMoved = i;
      player = 1;
      break;
    }
    
    //Test if the player is on a box
    if (p2.Xgrid == box[i].Xgrid && p2.Ygrid == box[i].Ygrid) {
      
      //Move the box relative to the direction the player moved
      if (p2.moveDirection == "up") {box[i].Ygrid--;}
      if (p2.moveDirection == "down") {box[i].Ygrid++;}
      if (p2.moveDirection == "left") {box[i].Xgrid--;}
      if (p2.moveDirection == "right") {box[i].Xgrid++;}
      
      //Set the box that was moved
      //Set the player who moved the box
      boxMoved = i;
      player = 2;
      break;
    }
  }
  
  //Test if a box is moved
  //Test the box collision again
  if (boxMoved != -1) {
    boxCollision2(boxMoved, player);
  }
}

void boxCollision2(int boxMoved, int player) {
  
  //Local variable to see if the check has completed
  boolean Checked = false;
  
  //Test which player moved the box
  if (player == 1) {
  
    //Test if the box the player pushed is at the 
    if (box[boxMoved].Xgrid == p2.Xgrid && box[boxMoved].Ygrid == p2.Ygrid) {
      //Move the player who pushed the box, and the box back to the original images
      if (p1.moveDirection == "up") {box[boxMoved].Ygrid++; p1.Ygrid++;}
      else if (p1.moveDirection == "down") {box[boxMoved].Ygrid--; p1.Ygrid--;}
      else if (p1.moveDirection == "left") {box[boxMoved].Xgrid++; p1.Xgrid++;}
      else if (p1.moveDirection == "right") {box[boxMoved].Xgrid--; p1.Xgrid--;}
      
      //Set that the check is completed
      Checked = true;
    }
    
  //Test which player moved the box
  } else if (player == 2) {
    
    //Test if the box the player pushed is at the
    if (box[boxMoved].Xgrid == p1.Xgrid && box[boxMoved].Ygrid == p1.Ygrid) {
      
      //Move the player who pushed the box, and the box back to the original images
      if (p2.moveDirection == "up") {box[boxMoved].Ygrid++; p2.Ygrid++;}
      else if (p2.moveDirection == "down") {box[boxMoved].Ygrid--; p2.Ygrid--;}
      else if (p2.moveDirection == "left") {box[boxMoved].Xgrid++; p2.Xgrid++;}
      else if (p2.moveDirection == "right") {box[boxMoved].Xgrid--; p2.Xgrid--;}
      
      //Set that the check is completed
      Checked = true;
    }
  }
  
  //Make sure that the check isn't complete
  if (!Checked) {
    
    //Get information about all of the boxes
    for (int i=0; i < boxIndex; i++) {
      
      //Make sure to not test the box that moved to itself
      if (boxMoved != i) {
        
        //Test if the box that moved is in the same position as another box
        if (box[boxMoved].Xgrid == box[i].Xgrid && box[boxMoved].Ygrid == box[i].Ygrid) {
          
          //Test the player that moved the box
          //Move the box and the player to the previous location they were in
          if (player == 1) {
            if (p1.moveDirection == "up") {box[boxMoved].Ygrid++; p1.Ygrid++;}
            else if (p1.moveDirection == "down") {box[boxMoved].Ygrid--; p1.Ygrid--;}
            else if (p1.moveDirection == "left") {box[boxMoved].Xgrid++; p1.Xgrid++;}
            else if (p1.moveDirection == "right") {box[boxMoved].Xgrid--; p1.Xgrid--;}
            break;
        //Test the player that moved the box
        //Move the box and the player to the previous location they were in
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
  //Draw every box
  for (int i=0; i < boxIndex; i++) {
    box[i].display();
  }
}