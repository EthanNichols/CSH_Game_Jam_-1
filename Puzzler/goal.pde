goal goal1 = new goal(4,4, #B98DC6);
goal goal2 = new goal(6,6, #FFB168);

class goal{
  int Xgrid;
  int Ygrid;
  int size = 32;
  int colour;
  
  goal(int _x,int _y, int _colour){
    Xgrid = _x;
    Ygrid = _y;
    colour = _colour;
  }
  
  void run(){
    display();
    checkWinStatus();


  }
  
  void display(){
    fill(colour);
    rect(Xgrid*size,Ygrid*size,size,size);
  }
  
  void checkWinStatus(){
    if(p1.Xgrid == goal1.Xgrid && p1.Ygrid == goal1.Ygrid){
      p1.onGoal = true;
      println("p1 is on goal!");
    }
    if(p2.Xgrid == goal2.Xgrid && p2.Ygrid == goal2.Ygrid){
      p2.onGoal = true;
      println("p2 is on goal!");
    }

  }
  
}