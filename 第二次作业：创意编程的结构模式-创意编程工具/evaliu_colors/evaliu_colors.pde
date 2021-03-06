void setup() {
  size(630, 420);
  background(255);
//}


//void draw() {
  float t=width/6;
  float x0=0;
  float y0=0;

  int[] rGroup1={51, 234, 27, 52};
  int[] gGroup1={123, 211, 75, 55};
  int[] bGroup1={75, 53, 137, 108};

  noStroke();
  fill(rGroup1[0], gGroup1[0], bGroup1[0]);
  rect(x0, y0, t, t);

  fill(rGroup1[1], gGroup1[1], bGroup1[1]);
  rect(x0+t, y0+t, t, t);

  fill(rGroup1[2], gGroup1[2], bGroup1[2]);
  rect(x0+t, y0, t, t);

  fill(rGroup1[3], gGroup1[3], bGroup1[3]);
  rect(x0, y0+t, t, t);

  for (int i=0; i<4; i++) {
    noStroke();
    fill(rGroup1[i], gGroup1[i], bGroup1[i]);
    rect(x0+(i+2)*t, 2*t, t, 2*t);
  }

  int[] rGroup2={180, 199, 255, 0};
  int[] gGroup2={38, 83, 255, 0};
  int[] bGroup2={36, 34, 255, 0};

  for (int j=0; j<4; j++) {
    noStroke();
    fill(rGroup2[j], gGroup2[j], bGroup2[j]);
    rect(0, 2*t+j*t/2, 2*t, t/2);
  }

  for (int k=0; k<2; k++) {
    noStroke();
    fill(rGroup2[k], gGroup2[k], bGroup2[k]);
    rect(2*t, k*t/2, 4*t, t/2);
  }

  float x1=2*t;
  float y1=t;
  for (int m=0; m<8; m++) {
    noStroke();
    if (m%2==0) {
      fill(255);
    } else {
      fill(0);
    }
    rect(x1+m*t/2, y1, t/2, t/2);
  }

  for (int n=0; n<8; n++) {
    noStroke();
    if (n%2!=0) {
      fill(255);
    } else {
      fill(0);
    }
    rect(x1+n*t/2, y1+t/2, t/2, t/2);
  }
}
