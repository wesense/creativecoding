float c = 255;

void setup(){
 size(400,400);
 background(0);
  frameRate(30);
  
}

void draw(){
  
//  background(0);
  
  
  c = map(mouseX,0,width,0,255);
  fill(c,random(255),random(255));
//  rectMode(CENTER);
//  rect(width/2, height/2,100,100);
ellipse(mouseX, mouseY, 30,30);
    
}


