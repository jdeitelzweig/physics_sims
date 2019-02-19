float rectWidth = 100;
float rectHeight = 50;

float x1 = -2*rectWidth;
float y1 = 0;
float x1_v = 1;
float x1_a = 0;

float r = 400;
float a = 0;
float a_v = 0;
float a_a = 0;

float x2, y2;


float g = 1;

void setup() {
  size(1400, 600);
  background(255);
}

void draw() {
  translate(width/2, rectHeight);
  x1_a = -0.001*x1;
  x1_v += x1_a;
  x1 += x1_v;

  a_a = -(x1_a/r*cos(a)+g/r*sin(a));
  a_v += a_a;
  a += a_v;

  background(255);
  fill(0);
  rectMode(CENTER);
  rect(x1, y1, rectWidth, rectHeight);
  x2 = x1 + r*sin(a);
  y2 = r*cos(a) + rectHeight;
  line(x1, y1, x2, y2);
  ellipse(x2, y2, 24, 24);
}
