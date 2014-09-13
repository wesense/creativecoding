import peasy.*;
PeasyCam camera;

float mX,mY, mZ, mD;

void setupPeasy(){
 
  mD = 1000;
  camera = new PeasyCam(this,0,0,0,mD);
//  camera.setMinimumDistance(-1000);
//  camera.setMaximumDistance(5000);
  
}
