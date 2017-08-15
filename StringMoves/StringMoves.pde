PFont f;
String message = "click mouse to shake it up";
// An array of Letter objects
Letter[] letters;

void setup() {
  size(260, 200);
  // Load the font
  f = createFont("Arial",20,true);
  textFont(f);
  
  // Create the array the same size as the String
  letters = new Letter[message.length()];
  // Initialize Letters at the correct x location
  int x = 16;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x,100,message.charAt(i)); 
    x += textWidth(message.charAt(i));
  }
}

void draw() { 
  background(255);
  for (int i = 0; i < letters.length; i++) {
    // Display all letters
    letters[i].display();
    
    // If the mouse is pressed the letters shake
    // If not, they return to their original location
    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}

// A class to describe a single Letter
class Letter {
  char letter;
  // The object knows its original "home" location
  float homex,homey;
  // As well as its current location
  float x,y;

  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    letter = letter_; 
  }

  // Display the letter
  void display() {
    fill(0);
    textAlign(LEFT);
    text(letter,x,y);
  }

  // Move the letter randomly
  void shake() {
    x += random(-2,2);
    y += random(-2,2);
  }

  // Return the letter home
  void home() {
    x = homex;
    y = homey; 
  }
}



//PFont f;
//String message = "Each character is written individually.";

//void setup() {
//  size(400, 150);
//  f = createFont("Arial",20,true);
//}

//void draw() { 
//  background(255);
//  fill(0);
//  textFont(f);         
//  int x = 10;
//  for (int i = 0; i < message.length(); i++) {
//    textSize(random(12,36));
//    text(message.charAt(i),x,height/2);
//    // textWidth() spaces the characters out properly.
//    x += textWidth(message.charAt(i)); 
//  }
//  noLoop();
//}

//PFont f;
//String message = "this text is spinning";
//float theta;

//void setup() {
//  size(200, 200);
//  f = createFont("Arial",20,true);
//}

//void draw() { 
//  background(255);
//  fill(0);
//  textFont(f);                  // Set the font
//  translate(width/2,height/2);  // Translate to the center
//  rotate(theta);                // Rotate by theta
//  textAlign(CENTER);            
//  text(message,0,0);            
//  theta += 0.05;                // Increase rotation
//}


//String[] headlines = {
//  "Processing downloads break downloading record.", 
//  "New study shows computer programming lowers cholesterol.",
//  };

//PFont f;  // Global font variable
//float x;  // horizontal location of headline
//int index = 0;

//void setup() {
//  size(400,200);
//  f = createFont("Arial",16,true);  
//  // Initialize headline offscreen to the right 
//  x = width; 
//}

//void draw() {
//  background(255);
//  fill(0);

//  // Display headline at x  location
//  textFont(f,16);        
//  textAlign(LEFT);
//  text(headlines[index],x,180); 

//  // Decrement x
//  x = x - 3;

//  // If x is less than the negative width, 
//  // then it is off the screen
//  float w = textWidth(headlines[index]);
//  if (x < -w) {
//    x = width; 
//    index = (index + 1) % headlines.length;
//  }
//}