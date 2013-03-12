boolean pressed = false;
void setup(){
  
  
}


void draw(){
  
 
 if(pressed == true){  
  background(color1,0,0);
 }else{
  background(0,color2,0); 
 }
  
}

void mousePressed(){
 if(pressed == false){
  pressed = true;  
 }else{
  pressed = false; 
 }
  
}

