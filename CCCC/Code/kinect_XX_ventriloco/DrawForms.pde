void drawForms(int form){
  
  PVector[] depthPoints = context.depthMapRealWorld();
 
 int depthPointsInBox = 0;
 stroke((color)(Integer)colors.get(numColor));
 strokeWeight(strokeW);
 
 
 
 for(int i = 0; i <depthPoints.length; i+=numPoints){
 
  PVector currentPoint = depthPoints[i];
  
  // draw the skeleton if it's available
    
  
 if(form == 0){
   if(currentPoint.z < maxLenght){ 
   point(currentPoint.x, currentPoint.y, currentPoint.z);
   }
 }
 
 
 if(form == 1){
   if(currentPoint.z < maxLenght){ 
   pushMatrix();
   translate(currentPoint.x, currentPoint.y, currentPoint.z);
   fill((color)(Integer)colors.get(numColor));
   box(sizeBox);
   popMatrix();
   }   
   
 }
 
 if(form == 2){
   if(currentPoint.z < maxLenght){ 
   pushMatrix();
   translate(currentPoint.x, currentPoint.y, currentPoint.z);
   fill((color)(Integer)colors.get(numColor));
//   rect(currentPoint.x - sizeBox, currentPoint.y - sizeBox, currentPoint.x + sizeBox, currentPoint.y + sizeBox); 
   box(sizeBox, sizeBox, sizeBox*0.1); 
   popMatrix();
   }
   
   
 }
  
}
}
