boolean pressed = false;
var name = 0;
void setup(){
  
  
}


void draw(){
  
 
 if(pressed == true){  
  background(0);
 }else{
  background(255); 
 }
  
}

void mousePressed(){
 if(pressed == false){
  pressed = true;
  
  name = name + 1;
  // In between the {} you insert your parameters
  $.post("http://itp.nyu.edu/~zr279/sinatra/processingjspost/processing", { firstname: name} );
  
 }else{
  pressed = false; 
 }
  
}

