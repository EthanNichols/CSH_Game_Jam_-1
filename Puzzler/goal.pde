//creates the goals
goal goal1 = new goal(4,4, #FFB168);
goal goal2 = new goal(6,6, #B98DC6); 

class goal{
  //sets the variables of the goals
  int Xgrid;
  int Ygrid;
  int size = 32;
  int colour;
  
  goal(int _x,int _y, int _colour){
    //parameters for x value y value and color
    Xgrid = _x;
    Ygrid = _y;
    colour = _colour;
  }
  
  void run(){
    //displays the goals and checks if you've completed the level
    display();
    checkWinStatus();
  }
  
  void display(){
    //draws the goals in their respective colors and places
    fill(colour);
    rect(Xgrid*size,Ygrid*size,size,size);
  }
  
  void checkWinStatus(){
    //checks if player one is in the same place as goal 1
    if(p1.Xgrid == goal1.Xgrid && p1.Ygrid == goal1.Ygrid){
      p1.onGoal = true;
    }else{
      p1.onGoal = false;
    }
    //checks if player two is in the same place as goal 2
    if(p2.Xgrid == goal2.Xgrid && p2.Ygrid == goal2.Ygrid){
      p2.onGoal = true;
    }else{
      p2.onGoal = false;
    }
    //checks if both players are on goals
    if(p1.onGoal && p2.onGoal){
      nextLevel();
    }

  }
  
}


void setPosition(int Xgrid, int Ygrid, char colour) {
  if (colour == 'o') {
    goal1.Xgrid = Xgrid;
    goal1.Ygrid = Ygrid;
  } else if (colour == 'p') { 
    goal2.Xgrid = Xgrid;
    goal2.Ygrid = Ygrid;
  }
}