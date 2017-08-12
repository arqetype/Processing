void setup() {
  size(400, 400);
  stroke(255);
  background(192, 64, 0);
}

void draw() {
//  line(150, 25, mouseX, mouseY);
  line(width/2, height/2, mouseX, mouseY);
}

void mousePressed() {
  saveFrame("output-###.png");
  background(192, 64, 0);
}