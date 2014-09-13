
//osc
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
NetAddress myRemoteClient;

//implement

void oscEvent(OscMessage theOscMessage) {
  /* check if theOscMessage has the address pattern we are looking for. */


//decreasePoint
  if(theOscMessage.checkAddrPattern("/3/decreasePoint")==true) {
    /* check if the typetag is the right one. */
    println("passei1");
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      println("passei2");
      if(numPoints != 0){
      numPoints = numPoints -1;
      println(numPoints);
    }
 
      return;
      
    }
  }
  
//increasePoints
  if(theOscMessage.checkAddrPattern("/3/increasePoint")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      
      
      numPoints = numPoints +1;
      println(numPoints);
      return;
      
    }
  }
  
//controlCamera
  if(theOscMessage.checkAddrPattern("/3/camera")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      float firstValue = theOscMessage.get(0).floatValue();
      
      Rotation = map(firstValue,0, 1, -180,180);
      return;
      
    }
  }  

//controlDistance
  if(theOscMessage.checkAddrPattern("/3/distance")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    s = (map(firstValue, 0, 1, 1,8));
    
      return;
      
    }
  } 
 
 
 //STROKE
  if(theOscMessage.checkAddrPattern("/3/stroke")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    strokeW = int(map(firstValue, 0, 1, 1,15));
    sizeBox = int(map(firstValue, 0, 1, 5,30));
     
      return;
      
    }
  }
  
  
 //MaxLenght
  if(theOscMessage.checkAddrPattern("/1/maxLenght")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    maxLenght = int(map(firstValue, 0, 1, 400,5000));
    
     
      return;
      
    }
  }
  
 //point
  if(theOscMessage.checkAddrPattern("/3/point")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    forms = 0;
     
      return;
      
    }
  }
  
 //box
  if(theOscMessage.checkAddrPattern("/3/box")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    forms = 1;
     
      return;
      
    }
  }
  
//sphere
  if(theOscMessage.checkAddrPattern("/3/sphere")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
   float firstValue = theOscMessage.get(0).floatValue();

    
    forms = 2;
     
      return;
      
    }
  }



//Calibrate P1  
  if(theOscMessage.checkAddrPattern("/2/calibrateP1")==true) {
    /* check if the typetag is the right one. */
    println("passei1");
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
    println("passei2");  
    calibrateP1();

      return;
    }
  }
  
//Calibrate P2
  if(theOscMessage.checkAddrPattern("/2/calibrateP2")==true) {
    /* check if the typetag is the right one. */
    println("passei1");
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
    println("passei2");  
    calibrateP2();

      return;
    }
  }
  
  

//saveframe
  if(theOscMessage.checkAddrPattern("/1/saveframe")==true) {
    /* check if the typetag is the right one. */
    
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
    
    save(month() +"-" +day()+ "-" + year() +"-" +second()+ "-" + minute() +"-" +hour()+ "-" + "touchedPoint.png");
//    saveFrameOSC();
  }
 
      return;
      
    }


  
//changeColors
  if(theOscMessage.checkAddrPattern("/1/changeColors")==true) {
    /* check if the typetag is the right one. */
    println("passei1");
    if(theOscMessage.checkTypetag("f")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
    
    float firstValue = theOscMessage.get(0).floatValue();
    numColor = int(map(firstValue, 0, 1, 0,sizeColors));
    
  }
 
      return;
      
    }
  }
  

  

  
  
  
  
  
  

void calibrateP1(){
  
   OscMessage myMessage = new OscMessage("/calib_p1");
  myMessage.add(1); /* add an int to the osc message */
  /* send the message */
  oscP5.send(myMessage, myRemoteClient);  
}

void calibrateP2(){
  
   OscMessage myMessage = new OscMessage("/calib_p2");
  myMessage.add(1); /* add an int to the osc message */
  /* send the message */
  oscP5.send(myMessage, myRemoteClient);  
}  





