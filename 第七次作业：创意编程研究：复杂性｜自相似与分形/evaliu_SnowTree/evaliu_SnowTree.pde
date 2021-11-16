ArrayList<SnowTree> lines;

void setup() {
  size(1000, 800);
  background(0);
  initiateData();

}

void initiateData() {
  lines=new ArrayList<SnowTree>();
  PVector start=new PVector(width/2, height);
  PVector end=new PVector(width/2, height/2);
  lines.add(new SnowTree(start, end));
}

void keyPressed() {
  if ((keyPressed==true)&&(key=='g')) {
    generate();
  }

  if ((keyPressed==true)&&(key=='c')) {
    background(0);
    initiateData();
  }
}

void draw() {
  for (SnowTree l : lines) {
    l.display();
  }
 saveFrame("frames/####.tif");
}

void generate() {
  ArrayList next=new ArrayList<SnowTree>();
  for (SnowTree l : lines) {
    PVector a=l.pointA();
    PVector b=l.pointB();
    PVector c=l.pointC();
    PVector d=l.pointD();
    PVector e=l.pointE();
    PVector f=l.pointF();
    PVector g=l.pointG();

    next.add(new SnowTree(a, b));
    next.add(new SnowTree(a, c));
    next.add(new SnowTree(a, d));
    next.add(new SnowTree(a, e));
    next.add(new SnowTree(a, f));
    next.add(new SnowTree(a, g));
  }
  lines=next;
}
