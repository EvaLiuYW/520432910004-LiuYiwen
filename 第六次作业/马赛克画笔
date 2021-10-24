PImage img;
float Button1x, Button1y;//第一个按钮：鼠标左键点击增加模糊度，右键点击还原原图。
float Button2x, Button2y;//第二个按钮：左键点击增大画笔尺寸，右键点击缩小画笔尺寸。
float Button3x, Button3y;//第三个按钮：单击切换画笔形状。
float ButtonSize=20;//按钮尺寸
color Button1Color, Button2Color, Button3Color;//按钮颜色
float dd1, dd2, dd3, d;//程序中形状的尺寸大小
color c;//像素点取色
float k;//高斯模糊度
float t=255;//画笔透明度
boolean CirclePen, RectPen;

void setup() {
  size(960, 600);

  Button1x=50;
  Button1y=50;
  Button2x=100;
  Button2y=50;
  Button3x=150;
  Button3y=50;
  Button1Color=#FF6464;
  Button2Color=#FFF279;
  Button3Color=#73DB4B;

  ellipseMode(CENTER);
  colorMode(RGB);
  initiate();
}

void initiate() {
  k=1;
  d=30;
  img=loadImage("src=http---b.zol-img.com.cn-desk-bizhi-image-2-960x600-1364440542803.jpg&refer=http---b.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg.jpeg");
  image(img, 0, 0);
}

void mouseClicked() {
  if ((mouseButton==LEFT)&&(dd3<=ButtonSize/2)&&(CirclePen==false)) {
    CirclePen=true;
    RectPen=false;
  } else if ((mouseButton==LEFT)&&(dd3<=ButtonSize/2)&&(RectPen==false)) {
    RectPen=true;
    CirclePen=false;
  }
}

void draw() {
  img.loadPixels();

  fill(Button1Color);
  noStroke();
  ellipse(Button1x, Button1y, ButtonSize, ButtonSize);
  fill(Button2Color);
  noStroke();
  ellipse(Button2x, Button2y, ButtonSize, ButtonSize);
  fill(Button3Color);
  noStroke();
  ellipse(Button3x, Button3y, ButtonSize, ButtonSize);

  dd1=sqrt((mouseX-Button1x)*(mouseX-Button1x)+(mouseY-Button1y)*(mouseY-Button1y));
  dd2=sqrt((mouseX-Button2x)*(mouseX-Button2x)+(mouseY-Button2y)*(mouseY-Button2y));
  dd3=sqrt((mouseX-Button3x)*(mouseX-Button3x)+(mouseY-Button3y)*(mouseY-Button3y));

  if ((dd1<=ButtonSize/2)||(dd2<=ButtonSize/2)||(dd3<=ButtonSize/2)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }

  if (mousePressed==true) {
    if ((mouseButton==RIGHT)&&(dd1<=ButtonSize/2)) {
      t+=1;
    }
    if  ((mouseButton==LEFT)&&(dd1<=ButtonSize/2)) {
      t-=1;
    }


    if ((mouseButton==LEFT)&&(dd2<=ButtonSize/2)) {
      d+=2;
    } else if ((mouseButton==RIGHT)&&(dd2<=ButtonSize/2)) {
      d-=2;
    }
    if (d<=10) {
      d=10;
    }

    if (CirclePen==true) {
      c=img.get(mouseX, mouseY);
      fill(c, t);
      noStroke();
      ellipse(mouseX, mouseY, d, d);
    }

    if (RectPen==true) {
      c=img.get(mouseX, mouseY);
      fill(c, t);
      noStroke();
      rectMode(CENTER);
      rect(mouseX, mouseY, d, d);
    }
  }
}

void mousePressed() {
  if ((mouseButton==RIGHT)&&(dd1>ButtonSize/2)&&(dd2>ButtonSize/2)&&(dd3>ButtonSize/2)) {
    k+=0.5;
    filter(BLUR, k);
  }
}
void keyPressed() {
  if (keyCode==ENTER) {
    image(img, 0, 0);
  }
}
