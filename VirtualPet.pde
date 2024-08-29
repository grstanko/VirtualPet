boolean redraw;
PImage rock;
Point[] points;

void setup() {
  redraw = true;
  size(400, 400);
  rock = loadImage("rock.gif");
  image(rock, 0,0 );
  
  Point p = new Point(0.0, 0.0);
  Point q = new Point(200.0, 200.0);
  Line l = new Line(p, q);
  l.draw();
}

void draw() {
  if ((pmouseX != pmouseX) || (pmouseY != mouseY)) {
    redraw = true;
  }
  if (mousePressed) {
  }
  if (redraw) {
    mydraw();
  }
}

void mydraw() {
  { // 
    clear();
    redraw = false;
    
  }
  { // Background
    background(30,30,46);
    image(rock, 0, 0);
  }
  fill(88, 91, 112);
  ellipse(200,200,280,280);
  fill(205, 214, 244);
  ellipse(140,140,60,60);
  ellipse(250,140,60,60);
  fill(17, 17, 27);
  ellipse(mouseX,mouseY,40,40);
}

class Point {
  public float x;
  public float y;
  
  public Point(float ix, float iy) {
    x = ix;
    y = iy;
  }
}

class Line {
  public Point a;
  public Point b;
  
  public Line(Point ia, Point ib) {
    a = ia;
    b = ib;
  }
  public void draw() {
    line(a.x, a.y, b.x, b.y);
  }
}

void normalize() {}
