class projectile{
  float x;
  float y;
  float vy = -30;
  float w = 12;
  float h = 16;
  boolean active = true;
  int id;
  
  projectile(float _x, float _y){
    x = _x;
    y = _y;
    
  }
  
  void run(){
    display();
    move();
    collide();
    projectileIndex ++;
    id = projectileIndex;
  }
  
  void display(){
    if (active == true){
      rect(x,y,w,h);
    }
  }

  void move(){
    y += vy;
  }

  void hit(){
    active = false;
  }
  
  void collide(){
    if(y < 0){
      hit();
    }
  
  }
}