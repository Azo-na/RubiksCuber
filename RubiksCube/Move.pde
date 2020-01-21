class Move{
  float angle = 0;
  int x = 0;
  int y = 0;
  int z = 0;
  int dir;
  boolean ani = false;
  boolean fin = false;
  
  Move(int x, int y, int z, int dir){
    this.x = x;
    this.y = y;
    this.z = z;
    this.dir = dir;
  }
  
  void start(){
    ani = true;
  }
  
  void update(){
    if(ani){
     angle += dir *0.1;
      if(abs(angle) > HALF_PI){
       angle = 0;
       ani = false;
       fin = true;
       if(abs(z) > 0){
        turnZ(z,dir);
       }
       else if(abs(x) > 0){
        turnX(x,dir);
       }
       else if(abs(y) > 0){
        turnY(y,dir);
       }
     }
   }
  }
}
