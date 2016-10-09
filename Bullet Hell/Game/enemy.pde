class enemy{
float x;
float y;
float size = 32;
float vx = 0;
float vy = 0;
boolean living = true;

  enemy(float _x,float _y){
    x = _x;
    y = _y;
  
  }
  
  void run(){
    move();
    display();
  }
  
  void display(){
  fill(200);
  rect(x,y,size,size);
  
  }
  
  void move(){
    y += vy;
    x += vx;
  }

}