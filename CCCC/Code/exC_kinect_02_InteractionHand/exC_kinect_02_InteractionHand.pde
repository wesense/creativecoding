/* --------------------------------------------------------------------------
 * SimpleOpenNI User Test
 * --------------------------------------------------------------------------
 * Processing Wrapper for the OpenNI/Kinect 2 library
 * http://code.google.com/p/simple-openni
 * --------------------------------------------------------------------------
 * prog:  Max Rheiner / Interaction Design / Zhdk / http://iad.zhdk.ch/
 * date:  12/12/2012 (m/d/y)
 * ----------------------------------------------------------------------------
 */
float _cX, _cY, _cZ = 0.0;
float rightHandX,rightHandY, rightHandZ; 

import SimpleOpenNI.*;

SimpleOpenNI  context;
color[]       userClr = new color[]{ color(255,0,0),
                                     color(0,255,0),
                                     color(0,0,255),
                                     color(255,255,0),
                                     color(255,0,255),
                                     color(0,255,255)
                                   };
PVector com = new PVector();                                   
PVector com2d = new PVector();                                   

void setup()
{
  size(640,480);
  
  context = new SimpleOpenNI(this);
  if(context.isInit() == false)
  {
     println("Can't init SimpleOpenNI, maybe the camera is not connected!"); 
     exit();
     return;  
  }
  
  // enable depthMap generation 
  context.enableDepth();
   
  // enable skeleton generation for all joints
  context.enableUser();
 
  background(0,0,0);
  

//  stroke(0,0,255);
  strokeWeight(1);
  smooth();  
  context.setMirror(true);
}

void draw()
{
  
    
  // update the cam
  context.update();
  
  // draw depthImageMap
  //image(context.depthImage(),0,0);
//  image(context.userImage(),0,0);
  
  // draw the skeleton if it's available
  int[] userList = context.getUsers();
  for(int i=0;i<userList.length;i++)
  {
    if(context.isTrackingSkeleton(userList[i]))
    {

      drawSkeleton(userList[i]);
    }      
        }    
}

// draw the skeleton with the selected joints
void drawSkeleton(int userId)
{
  // to get the 3d joint data
  
  PVector jointPos = new PVector();
  context.getJointPositionSkeleton(userId,SimpleOpenNI.SKEL_RIGHT_HAND,jointPos);
  println(jointPos);
  
  rightHandX = jointPos.x;
  rightHandY = jointPos.y;
  rightHandZ = jointPos.z;
  
//  background(0);
  _cX = map(rightHandX, -600, 600, 0, 255);
  _cY = map(rightHandY, -600, 600, 0, 255);
  _cZ = map(rightHandZ, 500, 2000, 100, 10);
  fill(_cX, random(255),random(255), _cY);
  int projectiveY = (int)map(rightHandY, -600, 600, height ,0);
  int projectiveX = (int)map(rightHandX, -600, 600, 0 ,width);
  ellipse(projectiveX,projectiveY, _cZ, _cZ); 
  
}

// -----------------------------------------------------------------
// SimpleOpenNI events

void onNewUser(SimpleOpenNI curContext, int userId)
{
  println("onNewUser - userId: " + userId);
  println("\tstart tracking skeleton");
  
  curContext.startTrackingSkeleton(userId);
}

void onLostUser(SimpleOpenNI curContext, int userId)
{
  println("onLostUser - userId: " + userId);
}

void onVisibleUser(SimpleOpenNI curContext, int userId)
{
  //println("onVisibleUser - userId: " + userId);
}


void keyPressed()
{
  switch(key)
  {
  case ' ':
    context.setMirror(!context.mirror());
    break;
  case 's':
    saveFrame(frameCount + "drawEllipse.png");
    break;
  }
}  

