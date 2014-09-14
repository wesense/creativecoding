

void setup(){
  
  size(200,200);
  background(255,0,255);
  
  rectMode(CENTER);
  fill(255,0,0);
  rect(width/2, height/2,30,30);
  
  fill(255);
  ellipseMode(CENTER);
  noStroke();
  ellipse(width/2, height/2, 20,20);
  
  stroke(#46DBFF);
  strokeWeight(10);
  line(0,0,width, height);
  
  point(100,10);
  
  noStroke();
  fill(255);
  
  beginShape();
    vertex(0,height/2);
    vertex(width/2, 0);
    vertex(width, height/2);
    vertex(width/2, height);
  endShape();
}


