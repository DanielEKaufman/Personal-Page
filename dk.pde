float a = 0.0;
float s = 0.0;

boolean triangle1 = true;
boolean triangle2 = true;
boolean triangle3 = true;
boolean triangle4 = true;

int moveY1 = 200; 

int moveX2 = 200; 
int moveY2 = 100; 

int moveX3 = 200; 
int moveY3 = 100; 

int moveX4 = 0;

void setup(){
  size(200,200);
  frameRate(1500); 
}

void draw(){
  background(#EDEDED);
    
  a = a + 0.04;
  s = cos(a)*2;
 
  //Move the first triangle to the second 
  if(triangle1){  
      moveY1 -= 1;
      if(moveY1 <= 0){
        triangle1 = false;
      }  
  }

  
  if(!triangle1 && triangle2){
      moveY2 -= 1;
      moveX2 -= 1;
      if((moveX2 <= 100)||(moveY2 <= 0)){
        triangle2 = false;
      }  
  }
  
  if(!triangle1 && !triangle2 && triangle3){
      moveY3 += 1;
      moveX3 -= 1;
      if((moveX3 <= 100)||(moveY3 >= 200)){
        triangle3 = false;
      }  
  }

    if(!triangle1 && !triangle2 && !triangle3 && triangle4){
      moveX4 += 1;
      if(moveX4 >= 200){
        triangle4 = false;
      }  
  }


 if(!triangle1 && !triangle2 && !triangle3 && !triangle4){ 
 fill(#808080);
 noStroke();
 } else {
   fill(#EDEDED);
 }
 
 if(triangle3){
   triangle(100, 100, 200-moveX4, 100, 200-moveX4, 200);
   triangle(100, 100, 200-moveX4, 100, 200-moveX4, moveY1);
 }

 if(!triangle1){
   triangle(100, 100, moveX2, moveY2, 200, 0);
 }
 if(!triangle2){
   triangle(100, 100, moveX3, moveY3, 200, 200);  
 }

 if(!triangle3){
   triangle(100, 100, 200-moveX4, 100, 200-moveX4, 200);
   triangle(100, 100, 200-moveX4, 100, 200-moveX4, moveY1);
 }

 
}
