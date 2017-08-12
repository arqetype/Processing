// Declare an object
Car myCar1;
Car myCar2;

void setup() {
  size(200, 200);
  // Object initialization
  myCar1 = new Car(color(255,0,0),0,100,2); // the new operator is used to make a new object
  myCar2 = new Car(color(0,0,255),0,10,1);
}

void draw() {
  background(255);
  // Call methods on object
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
}

class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  // the constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
  
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}