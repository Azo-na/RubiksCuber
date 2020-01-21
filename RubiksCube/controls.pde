void keyPressed(){
  switch(key){
    case' ':
    m.start();
    started = true;
    break;
    case'1':
    started = true;
    started2 = true;
    m.start();
    break;
    case 'f':
    m = new Move(0,0,1,1);
    m.start();
    break;
    case 'F':
    m = new Move(0,0,1,-1);
    m.start();
    //turnZ(1,-1);
    break;   
    case 'b':
    m = new Move(0,0,-1,1);
    m.start();
    //turnZ(-1,1);
    break;
    case 'B':
    m = new Move(0,0,-1,-1);
    m.start();
    //turnZ(-1,-1);
    break;
    case 'd':
    m = new Move(0,1,0,1);
    m.start();
    //turnY(1,1);
    break;
    case 'D':
    m = new Move(0,1,0,-1);
    m.start();
    //turnY(1,-1);
    break;
    case 'u':
    m = new Move(0,-1,0,1);
    m.start();
    //turnY(-1,1);
    break;
    case 'U':
    m = new Move(0,-1,0,-1);
    m.start();
    //turnY(-1,-1);
    break;
    case 'l':
    m = new Move(-1,0,0,1);
    m.start();
    //turnX(-1,1);
    break;
    case 'L':
    m = new Move(-1,0,0,-1);
    m.start();
    //turnX(-1,-1);
    break;
    case 'r':
    m = new Move(1,0,0,1);
    m.start();
    //turnX(1,1);
    break;
    case 'R':
    m = new Move(1,0,0,-1);
    m.start();
    //turnX(1,-1);
    break;
  }
}

void applyMove(char move){
  switch(move){
    //case' ':
    //m.start();
    //break;
    case 'f':
    m = new Move(0,0,1,1);
    m.start();
    break;
    case 'F':
    m = new Move(0,0,1,-1);
    m.start();
    //turnZ(1,-1);
    break;   
    case 'b':
    m = new Move(0,0,-1,1);
    m.start();
    //turnZ(-1,1);
    break;
    case 'B':
    m = new Move(0,0,-1,-1);
    m.start();
    //turnZ(-1,-1);
    break;
    case 'd':
    m = new Move(0,1,0,1);
    m.start();
    //turnY(1,1);
    break;
    case 'D':
    m = new Move(0,1,0,-1);
    m.start();
    //turnY(1,-1);
    break;
    case 'u':
    m = new Move(0,-1,0,1);
    m.start();
    //turnY(-1,1);
    break;
    case 'U':
    m = new Move(0,-1,0,1);
    m.start();
    //turnY(-1,-1);
    break;
    case 'l':
    m = new Move(-1,0,0,1);
    m.start();
    //turnX(-1,1);
    break;
    case 'L':
    m = new Move(-1,0,0,-1);
    m.start();
    //turnX(-1,-1);
    break;
    case 'r':
    m = new Move(1,0,0,1);
    m.start();
    //turnX(1,1);
    break;
    case 'R':
    m = new Move(1,0,0,-1);
    m.start();
    //turnX(1,-1);
    break;
  }
}
