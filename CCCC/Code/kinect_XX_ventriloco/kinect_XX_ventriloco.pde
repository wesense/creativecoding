//processing
import processing.opengl.*;
import processing.video.*;


void setup(){
 
 size(1024,768,P3D);
 if (frame != null) {
    frame.setResizable(true);
  } 
  
  setupSimpleOpen();
  setupInit();
 
}

void draw(){
  
 setupOnDraw();
 



  drawForms(forms);

}



void mousePressed(){
  save(month() +"-" +day()+ "-" + year() +"-" +second()+ "-" + minute() +"-" +hour()+ "-" + "touchedPoint.png");

}
