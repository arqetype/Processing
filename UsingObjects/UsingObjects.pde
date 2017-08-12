// define variables (data)
color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

// initialize
void setup() {
  size(200,200);
}

// the main function
void draw() {
  background(255);
  move();
  display();
}

// methods
void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}