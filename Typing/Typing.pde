String letters = "";
int back = 102;

void setup() {
  size(100, 100);
  textSize(16);
  textAlign(CENTER);
}

void draw() {
  background(back);
  text(letters, 50, 50);
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    letters = letters.toLowerCase();
    println(letters); // Print to console to see input
    if (letters.equals("black")) {
      back = 0;
    } else if (letters.equals("gray")) {
      back = 204;
    }
    letters = ""; // Clear the variable
  } else if ((key > 31) && (key != CODED)) {
    // If the key is alphanumeric, add it to the String
    letters = letters + key;
  }
}
//String letters = "";

//void setup() {
//  size(200, 200);
//  stroke(255);
//  fill(0);
//  textSize(16);
//}

//void draw() {
//  background(204);
//  float cursorPosition = textWidth(letters);
//  line(cursorPosition, 0, cursorPosition, 100);
//  text(letters, 0, 50);
//}

//void keyPressed() {
//  if (key == BACKSPACE) {
//    if (letters.length() > 0) {
//      letters = letters.substring(0, letters.length()-1);
//    }
//  } else if (textWidth(letters+key) < width) {
//      letters = letters + key;
//  }
//}