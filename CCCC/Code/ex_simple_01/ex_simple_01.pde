void setup(){
 
size(300,300);
background(50,250,50);

fill(250,250,00);
noStroke();
  
beginShape();  
    vertex(0,height/2);
    vertex(width/2,0);
    vertex(width,height/2);  
    vertex(width/2,height); 
endShape(); 

fill(0,0,250);  
ellipseMode(CENTER);
ellipse(width/2, height/2,150,150); 

fill(250);  
line(0,40,150,250); 
}
