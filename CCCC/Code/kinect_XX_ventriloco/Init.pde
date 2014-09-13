//camera
float Rotation;
float rotation = 0;


int boxSize = 150;
PVector boxCenter = new PVector(0,0,600);
float s = 1;


//increase_decrease_num_point
int numPoints;
//stroke
int strokeW;
int sizeBox;

//forms

int forms;

//colors

int sizeColors;
int numColor;

//maxLenght

int maxLenght;

//SimpleOpenNI

import SimpleOpenNI.*;


SimpleOpenNI context;
float        zoomF =0.5f;
float        rotX = radians(180);  // by default rotate the hole scene 180deg around the x-axis, 
                                   // the data from openni comes upside down
float        rotY = radians(0);
boolean      autoCalib=true;

PVector      bodyCenter = new PVector();
PVector      bodyDir = new PVector();

void setupSimpleOpen(){
  
 context = new SimpleOpenNI(this);
   
  // disable mirror
  context.setMirror(true);

  // enable depthMap generation 
  if(context.enableDepth() == false)
  {
     println("Can't open the depthMap, maybe the camera is not connected!"); 
     exit();
     return;
  }

  // enable skeleton generation for all joints
  context.enableUser(SimpleOpenNI.SKEL_PROFILE_ALL); 
  
}



void setupInit(){
 
   //osc
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("127.0.0.1",12000);
  myRemoteClient = new NetAddress("127.0.0.1",13000);

  //implement
 
 setupPeasy();
 
 setColors();
 
 //init
 //init
 numColor = 0; 
 numPoints  = 10;
 Rotation = 0;
 strokeW = 10;
 sizeBox = 10;
 forms = 0;
 maxLenght = 1000; 
 
 //setImages
 setImages();
  
}
