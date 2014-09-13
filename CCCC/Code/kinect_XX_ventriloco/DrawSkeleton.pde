// draw the skeleton with the selected joints
void drawSkeleton(int userId)
{
  strokeWeight(3);

  // to get the 3d joint data
//  drawLimb(userId, SimpleOpenNI.SKEL_HEAD, SimpleOpenNI.SKEL_NECK);

//  drawLimb(userId, SimpleOpenNI.SKEL_NECK, SimpleOpenNI.SKEL_LEFT_SHOULDER);
//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_SHOULDER, SimpleOpenNI.SKEL_LEFT_ELBOW);
//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_ELBOW, SimpleOpenNI.SKEL_LEFT_WRIST);
//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_WRIST, SimpleOpenNI.SKEL_LEFT_HAND);

drawLimb(userId, SimpleOpenNI.SKEL_LEFT_HAND, SimpleOpenNI.SKEL_RIGHT_HAND);
//  drawLimb(userId, SimpleOpenNI.SKEL_NECK, SimpleOpenNI.SKEL_RIGHT_SHOULDER);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_SHOULDER, SimpleOpenNI.SKEL_RIGHT_ELBOW);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_ELBOW, SimpleOpenNI.SKEL_RIGHT_WRIST);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_WRIST, SimpleOpenNI.SKEL_RIGHT_HAND);

//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_SHOULDER, SimpleOpenNI.SKEL_TORSO);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_SHOULDER, SimpleOpenNI.SKEL_TORSO);

//  drawLimb(userId, SimpleOpenNI.SKEL_TORSO, SimpleOpenNI.SKEL_LEFT_HIP);
//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_HIP, SimpleOpenNI.SKEL_LEFT_KNEE);
//  drawLimb(userId, SimpleOpenNI.SKEL_LEFT_KNEE, SimpleOpenNI.SKEL_LEFT_FOOT);
//
//  drawLimb(userId, SimpleOpenNI.SKEL_TORSO, SimpleOpenNI.SKEL_RIGHT_HIP);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_HIP, SimpleOpenNI.SKEL_RIGHT_KNEE);
//  drawLimb(userId, SimpleOpenNI.SKEL_RIGHT_KNEE, SimpleOpenNI.SKEL_RIGHT_FOOT);  

  // draw body direction
  getBodyDirection(userId,bodyCenter,bodyDir);
  
  bodyDir.mult(200);  // 200mm length
  bodyDir.add(bodyCenter);
  
  stroke(255,200,200);
  line(bodyCenter.x,bodyCenter.y,bodyCenter.z,
       bodyDir.x ,bodyDir.y,bodyDir.z);

  strokeWeight(1);
  
  // test for intersections
//  drawIntersection(userId);
 
}

void drawLimb(int userId,int jointType1,int jointType2)
{
  PVector jointPos1 = new PVector();
  PVector jointPos2 = new PVector();
  float  confidence;
  
  // draw the joint position
  confidence = context.getJointPositionSkeleton(userId,jointType1,jointPos1);
  confidence = context.getJointPositionSkeleton(userId,jointType2,jointPos2);

//  stroke(255,0,0,confidence * 200 + 55);
//  line(jointPos1.x,jointPos1.y,jointPos1.z,jointPos2.x,jointPos2.y,jointPos2.z);
       

pushMatrix();
  beginShape();
  noStroke();
  texture(cara);
  vertex(jointPos1.x - cara.width/2, jointPos1.y +  cara.height/2,jointPos1.z, 0, 0);
  vertex(jointPos1.x + cara.width/2, jointPos1.y +  cara.height/2,jointPos1.z, cara.width, 0);
  vertex(jointPos1.x + cara.width/2, jointPos1.y -  cara.height/2,jointPos1.z, cara.width, cara.height);
  vertex(jointPos1.x - cara.width/2, jointPos1.y -  cara.height/2,jointPos1.z, 0, cara.height);
  endShape();
popMatrix();

pushMatrix();
  beginShape();
  noStroke();
  texture(boca);
  vertex(jointPos2.x - boca.width/2, jointPos2.y +  boca.height/2,jointPos2.z, 0, 0);
  vertex(jointPos2.x + boca.width/2, jointPos2.y +  boca.height/2,jointPos2.z, boca.width, 0);
  vertex(jointPos2.x + boca.width/2, jointPos2.y -  boca.height/2,jointPos2.z, boca.width, boca.height);
  vertex(jointPos2.x - boca.width/2, jointPos2.y -  boca.height/2,jointPos2.z, 0, boca.height);
  endShape();
popMatrix();


//BOLAS GRANDES
//  pushMatrix();
//    translate(jointPos1.x,jointPos1.y,jointPos1.z);
//    sphere(80);
//  popMatrix();
//
//  pushMatrix();
//    translate(jointPos2.x,jointPos2.y,jointPos2.z);
//    sphere(80);
//  popMatrix();
  
//  drawJointOrientation(userId,jointType1,jointPos1,50);
}


//

void drawJointOrientation(int userId,int jointType,PVector pos,float length)
{
  // draw the joint orientation  
  PMatrix3D  orientation = new PMatrix3D();
  float confidence = context.getJointOrientationSkeleton(userId,jointType,orientation);
  if(confidence < 0.001f) 
    // nothing to draw, orientation data is useless
    return;
    
  pushMatrix();
    translate(pos.x,pos.y,pos.z);
    
    // set the local coordsys
    applyMatrix(orientation);
    
    // coordsys lines are 100mm long
    // x - r
    stroke(255,0,0,confidence * 200 + 55);
    line(0,0,0,
         length,0,0);
    // y - g
    stroke(0,255,0,confidence * 200 + 55);
    line(0,0,0,
         0,length,0);
    // z - b    
    stroke(0,0,255,confidence * 200 + 55);
    line(0,0,0,
         0,0,length);
  popMatrix();
}
