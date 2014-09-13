void setupOnDraw(){
  
 background(0);
 lights();
 context.update();
  
 translate(width/2,height/2,-1000);
// camera.lookAt(width/2,height/2,-1000);
 rotateX(radians(180));
 
 translate(0,0,1400);
  
 rotateY(radians(Rotation));
// rotation ++;

 translate(0,0,s*-1000);
 scale(s);
 
 println(s);

getSkeleton(); 
  
}

void getSkeleton(){
 
   int[] userList = context.getUsers();
  for(int j=0;j<userList.length;j++)
  {
    if(context.isTrackingSkeleton(userList[j]))
      drawSkeleton(userList[j]);
  }   
  
}
