Ring[] rings; // Declare the array
int numRings = 50;
int currentRing = 0; 
void setup() {
  size(100, 100);
  rings = new Ring[numRings]; // Create the array
  for (int i = 0; i < rings.length; i++) {
    rings[i] = new Ring(); // Create each object
  }
}
void draw() {
  background(0);
  for (int i = 0; i < rings.length; i++) {
    rings[i].grow();
    rings[i].display();
  }
}
// Click to create a new Ring
void mousePressed() {
  rings[currentRing].start(mouseX, mouseY);
  currentRing++;
  if (currentRing >= numRings) {
    currentRing = 0;
  }
}
class Ring {
  float x, y;          // X-coordinate, y-coordinate
  float diameter;      // Diameter of the ring
  boolean on = false;  // Turns the display on and off

  void start(float xpos, float ypos) {
    x = xpos;
    y = ypos; 

    diameter = 1;
    on = true;
  }
  
  void grow() {
    if (on == true) {
      diameter += 0.5;
      if (diameter > 400) {
        on = false;
        diameter = 1;
      }
    }
  }

  void display() {
    if (on == true) {
      noFill();
      strokeWeight(4);
      stroke(204, 153);
      ellipse(x, y, diameter, diameter);
    }
  }
}

//int num = 50;
//int[] x = new int[num];
//int[] y = new int[num];
//int indexPosition = 0;

//void setup() {
//  size(100, 100);
//  noStroke();
//  fill(255, 102);
//}

//void draw() {
//  background(0);
//  x[indexPosition] = mouseX;
//  y[indexPosition] = mouseY;
//  // Cycle between 0 and the number of elements
//  indexPosition = (indexPosition + 1) % num;
//  for (int i = 0; i < num; i++) {
//    // Set the array position to read
//    int pos = (indexPosition + i) % num;
//    float radius = (num-i) / 2.0;
//    ellipse(x[pos], y[pos], radius, radius);
//  }
//}


//int num = 50;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup() { 
//  size(100, 100);
//  noStroke();
//  fill(255, 102);
//}

//void draw() {
//  background(0);
//  // Shift the values to the right
//  for (int i = num-1; i > 0; i--) {
//    x[i] = x[i-1];
//    y[i] = y[i-1];
//  }
//  // Add the new values to the beginning of the array
//  x[0] = mouseX;
//  y[0] = mouseY;
//  // Draw the circles
//  for (int i = 0; i < num; i++) {
//    ellipse(x[i], y[i], i/2.0, i/2.0);
//  }
//}