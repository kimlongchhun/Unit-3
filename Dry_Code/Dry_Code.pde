// Kimlong Chhun

color pink = #aebae9;
color lightred = #ed7f6e;
color green =   #7b8265;
color milk =   #f1f0e2;
color white = #FFFFFF;
color black = #000000;
color selectedColor;

void setup() {
  size (900, 900);
  strokeWeight(4);
  selectedColor = lightred;
}

void draw() {
  background(milk);
  if (dist(200, 200, mouseX, mouseY) <  75) {
    stroke (white);
  } else {
    stroke (black);
  }
  fill(pink);
  circle(200, 200, 150);

  if (dist(200, 450, mouseX, mouseY) < 75) {
    stroke (white);
  } else {
    stroke(black);
  }
  fill(green);
  circle(200, 450, 150);

  if (dist(200, 700, mouseX, mouseY) < 75) {
    stroke (white);
  } else {
    stroke(black);
  }
  fill(lightred);
  circle (200, 700, 150);
  stroke(black);
  fill(selectedColor);
  square(400, 300, 400);
}

void tactile (int x, int y, int r){
  if (dist(x, y, mouseX, mouseY) <  r) {
    stroke (white);
  } else {
    stroke (black);
  }
}


void mouseReleased() {
  if (dist(200, 200, mouseX, mouseY) <  75) {
    selectedColor = pink;
  }
  if (dist(200, 450, mouseX, mouseY) < 75) {
    selectedColor = green;
  }
  if (dist(200, 700, mouseX, mouseY) < 75) {
    selectedColor = lightred;
  }
}
