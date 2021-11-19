import processing.sound.*;

SoundFile s;
Amplitude ampl;
AudioIn ai;

boolean SaveImage;

int n;
float rr, gg, bb;
float eR;
color c;

void setup() {
  size(1000, 800);
  background(0);
  colorMode(RGB);
  //SongPlay();
  MicInput();
}

//播放现有歌曲
//void SongPlay() {
//  s=new SoundFile(this, "Pet Shop Boys - Go West.mp3");
//  s.play();
//  s.loop();
//  ampl=new Amplitude(this);
//  ampl.input(s);
//}

//录制音频（人机交互）
void MicInput() {
  ai = new AudioIn(this, 0);
  ai.play();
  ampl= new Amplitude(this);
  ampl.input(ai);
}


void draw() {
  frameRate(40);
  //background(0);
  translate(width/2, height/2);

  float value=ampl.analyze();

  n=int(map(value, 0, 1, 20, 1));

  if (value>0.6) {
    rr=255;
    bb=map(value, 0, 1, 129, 200);
    gg=130;
  } else if (value<0.4) {
    rr=map(value, 0, 1, 200, 129);
    gg=130;
    bb=255;
  } else {
    rr=bb=gg=255;
  }

  ////rr=map(value,0,1,0,255);
  //rr=255*value+50;
  // //bb=255-map(value,0,1,0,255);
  // bb=255/value-50;
  // gg=map(value,0,1,150,255);

  println(value);

  fill(rr, gg, bb, map(value, 0, 1, 0, 100));
  drawSpiral(n);

  if (mousePressed==true) {
    SaveImage=true;
  } else {
    SaveImage=false;
  }

  if (SaveImage==true) {
    save("outPut/img"+day()+"_"+hour()+"_"+minute()+"_"+second());
  }
}

//绘制螺旋形
void drawSpiral(int jump) {
  float r=25;
  float rad = 8;
  float theta = 2*PI*((sqrt(5)-1)/2);
  float ex, ey;

  for (int i = 0; i<2000; i+=jump) {
    noStroke();
    ex=r*cos(i*theta);
    ey=r*sin(i*theta);
    ellipse(ex, ey, rad, rad);
    r += jump*0.4;
    rad += jump*0.018;
  }

  //画面渐消
  fill(0, 10);
  rectMode(CENTER);
  rect(0, 0, width, height);
}

//void keyPressed() {
//  if (key==' ') {
//    if (s.isPlaying()) {
//      s.pause();
//    } else {
//      s.play();
//    }
//  }
//}
