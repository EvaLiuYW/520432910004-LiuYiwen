void setup(){
  size(650,500);
  background(255);
}

void initiateData(){
  float rectWidth,rectHeight;
  int[]colors={0,80,150,250};
  //int[]colors=new color[3];
  
  //int[] k={1,2,3,4,5,6,7,8,9,10};
  for(int rectX=0;rectX<=2*height;rectX+=rectWidth){
    rectWidth=int(random(50,width/2));
    for(int rectY=0;rectY<=2*width;rectY+=rectHeight){
      rectHeight=int(random(50,height/2));
      
      int i=int(random(0,4));
      fill(colors[i]);
      rect(rectX,rectY,rectWidth,rectHeight);
      
      stroke(0);
      strokeWeight(5);
      line(rectX,rectY,rectX,rectY+rectHeight);
      line(rectX,rectY,rectX+rectWidth,rectY);
    }
  }
}

void draw(){
  fill(255,0);
  noStroke();
  rect(0,0,width,height);
}

void keyPressed(){
   if (key=='r'){
     initiateData();
  }
}
