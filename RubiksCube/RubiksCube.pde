import peasy.*;

PeasyCam cam;
int dim = 3;
Box[]cube = new Box[dim*dim*dim];
Move m = new Move(0,0,1,1);

String[] allMoves = {"f","b","l","r","u","d"};
String sequence = "";
char[] sequence2 = new char[3];
String sequence3 = "";
int counter = 0;
int counter2 = 0;
boolean started = false;
boolean started2 = false;

void setup(){
  size(600,600,P3D);  
  cam = new PeasyCam(this,400);
  int index = 0;
  for(int x = -1; x <= 1; x++){
    for(int y = -1; y <= 1; y++){
      for(int z = -1; z <= 1; z++){
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x,y,z);
        cube[index] = new Box(matrix, x, y, z);
        index++;
      }
    }
  }
  
   for(int i = 0; i < 3; i++){
     int r = int(random(allMoves.length));
     if(random(1) < 0.5){
       sequence += allMoves[r];
     }
     else{
       sequence += allMoves[r].toUpperCase();
     }
   }
   print(sequence);
   re();
}


int index = 0;

void turnZ(int index, int dir){
  for(int i = 0; i < cube.length; i++){
    Box qb = cube[i];
        if(qb.z == index){
          PMatrix2D matrix = new PMatrix2D();
          matrix.rotate(dir*HALF_PI);
          matrix.translate(qb.x,qb.y);
          qb.update(round(matrix.m02), round(matrix.m12),qb.z);
          qb.turnFacesZ(dir);
        }
   }
}

void turnY(int index, int dir){
  for(int i = 0; i < cube.length; i++){
    Box qb = cube[i];
        if(qb.y == index){
          PMatrix2D matrix = new PMatrix2D();
          matrix.rotate(dir*HALF_PI);
          matrix.translate(qb.x,qb.z);
          qb.update(round(matrix.m02), qb.y, round(matrix.m12));
          qb.turnFacesY(dir);
        }
   }
}

void turnX(int index, int dir){
  for(int i = 0; i < cube.length; i++){
    Box qb = cube[i];
        if(qb.x == index){
          PMatrix2D matrix = new PMatrix2D();
          matrix.rotate(dir*HALF_PI);
          matrix.translate(qb.y,qb.z);
          qb.update(qb.x, round(matrix.m02), round(matrix.m12));
          qb.turnFacesX(dir);
        }
   }
}

void re(){
    for(int i = 0; i < sequence.length(); i++){
      if(sequence.charAt(i) >= 97 && sequence.charAt(i) <= 122){
          sequence2[i] = (char)(sequence.charAt(i)-32);
      }
      else{
         sequence2[i] = (char)(sequence.charAt(i)+32);
      }
    }
    
    for(int i = 0; i < sequence2.length; i++){
      sequence3 += sequence2[i];
    }
    
    println("\n" +sequence3);
}
void draw(){
  background(51);
  
  m.update();
  if(started){
    if(m.fin){
    if(counter < sequence.length()){
      char move = sequence.charAt(counter);
      applyMove(move);
      counter++;
    }
    
    if(started2){
     if(counter2 < sequence2.length){
       print("\n" +sequence2[counter-counter2-1]);
         applyMove(sequence2[counter-counter2-1]);
         counter2++;
       }
    }
  }
   
}
  
  
  scale(50);
   for(int i = 0; i < cube.length; i++){
     push();
     if(abs(cube[i].z) > 0 && cube[i].z == m.z){
       rotateZ(m.angle);  
     }
     else if(abs(cube[i].x) > 0 && cube[i].x == m.x){
       rotateX(m.angle);  
     }
     else if(abs(cube[i].y) > 0 && cube[i].y == m.y){
       rotateY(-m.angle);  
     }
     cube[i].show();
     pop();
   }
  
   //m.update();
}
