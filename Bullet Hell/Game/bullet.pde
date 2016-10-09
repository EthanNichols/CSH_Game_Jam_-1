class bullet{
  float x = 0;
  float y = 0;
  float size = 5;
  float vy = 0;
  float vx = 0;
  int id;
  
  bullet(){
    move();
    display();
  
  
  
  }
  
  void move(){
    x += vx;
    y += vy;
  }
  
  void display(){
    rect(x,y,size,size);
  }
  
}