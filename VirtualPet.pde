boolean redraw;
PImage rock;

void setup() {
  redraw = true;
  size(400, 400);
}

void draw() {
  mydraw();/*
  if ((pmouseX != pmouseX) || (pmouseY != mouseY)) {
   redraw = true;
   }
   if (mousePressed) {
   }
   if (redraw) {
   mydraw();
   }*/
}

void mydraw() {
  { // 
    redraw = false;
  }
  { // Background
    background(30, 30, 46);
  }
  fill(88, 91, 112);
  ellipse(200, 200, 280, 280);
  fill(205, 214, 244);
  ellipse(140, 140, 60, 60);
  ellipse(250, 140, 60, 60);
  fill(17, 17, 27);
  ellipse(mouseX, mouseY, 40, 40);
  ellipse(mouseX + 110, mouseY, 40, 40);
}
