
void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  frameRate(30);

  float x1=mouseX+random(-80, 80);
  float y1=mouseY+random(-80, 80);
  float a=random(20, 80);

  float rr, gg, bb;
  rr=random(100, 200);
  bb=random(100, 200);
  gg=random(100, 200);
  
  float choice=random(0.9);
  if (choice<0.3) {
    rr=255;
  } else if (choice>0.6) {
    gg=255;
  } else {
    bb=255;
  }

  if (mousePressed) {
    fill(0, 20);
    rect(0, 0, width, height);
    fill(rr, gg, bb);
    noStroke();
    rect(x1, y1, a, a);
   
    
  } else {
    fill(0, 10);
    rect(0, 0, width, height);
  }
  
}
