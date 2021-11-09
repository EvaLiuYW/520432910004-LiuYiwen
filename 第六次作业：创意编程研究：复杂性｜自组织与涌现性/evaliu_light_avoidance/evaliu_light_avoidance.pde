int numMov = 2000;
Mover[] movers = new Mover[numMov];


void setup() {
  size(600, 400);
  background(255);
  for (int i=0; i<numMov; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  //background(255);
  fill(255,80);
  noStroke();
  rect(0,0,width,height);
  for (int i=0; i<numMov; i++) {
    movers[i].run();
  }
   cursor(HAND);
   //saveFrame("frames/####.tif");
}


void keyPressed() {
  if (key=='r') {
    setup();
  }
}
