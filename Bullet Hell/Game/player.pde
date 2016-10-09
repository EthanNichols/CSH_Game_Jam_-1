class player{
    float x = (width / 2);
    float y = (height - 100);
    float size = 32;
    float vx = 0;
    float vy = 0;
    boolean living = true;
    boolean firing = false;
    
    
    player(){ 
    }
    
    void run(){
      move();
      display();
      wallcollide();    
    }
    
    void move(){
      x += vx;
      y += vy;
    
    }
    
    void display(){
      fill(255);
      rect(x,y,size,size);
    }
    
    void wallcollide(){
      if( x > width- size){
        x = width - size;
      }
      if (x < 0){
        x = 0;
      }
      if ( y > height - size){
        y = height - size;
      }
      if (y < 0){
        y = 0;
      }
    }


}