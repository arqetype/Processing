TextFrame myFrame;
PFont ave;
PFont athelas;

void setup() {
  size(400, 400);
  textSize(12);
  myFrame = new TextFrame(70, 200, 70, 100, 15, color(160, 235, 65), 0);
  ave = createFont("Avenir-Book", 16);
  athelas = createFont("Athelas-Bold", 24);
  textFont(ave);
  textAlign(LEFT);
}

void draw() {
  fill(255);
  textSize(48);
  text("EV3", 55, 40);
  textFont(athelas);
  textSize(24);
  fill(126);
  text("Mindstorms", 0, 40);
  textFont(ave);
  textSize(12);
  fill(0);
  text("TriBot", 0, 16);
  textSize(64);
  fill(color(125, 115, 105, 60)); // dark fill, opacity of 126
  text("8", 15, 100);
  text("8", 30, 110);
  text("8", 45, 120);
  text("8", 60, 130);
  text("8", 75, 140);
  
  fill(200);
  rect(200, 50, 100, 150);
  String s = "Tune in... Turn on... Burn out...";
  fill(0);
  textSize(12);
  text(s, 215, 65, 70, 120);
  
  myFrame.drawFrame();
  textFont(athelas);
  myFrame.drawText("Hello Dolly!", 0);
  
  textFont(ave);
  TextFrame kader = new TextFrame(210, 225, 80, 150, 10, color(0, 0, 0), color(200, 250, 245));
  kader.drawFrame();
  textAlign(CENTER);
  kader.drawText("\nTune in... Turn on... Burn out...", color(180, 220, 50, 126));
  textAlign(LEFT);
  
  fill(color(100, 50, 50));
  stroke(100, 50, 50);
  String under = "Underlined text";
  float tw; // text width
  textFont(ave);
  textSize(16);
  tw = textWidth(under);
  text(under, 10, 330);
  rect(10, 334, tw, 5);
}

class TextFrame {
  float xPos;
  float yPos;
  float frameWidth;
  float frameHeight;
  float padding;
  color backColor;
  color frameColor;
  
  // constructor with arguments
  TextFrame(float x, float y, float w, float h, float p, color bc, color fc) {
    xPos = x;
    yPos = y;
    frameWidth = w;
    frameHeight = h;
    padding = p;
    backColor = bc;
    frameColor = fc;
  }
  
  void drawFrame() {
    fill(backColor);
    stroke(frameColor);
    rect(xPos, yPos, frameWidth, frameHeight);
  }
  
  void drawText(String s, color c) {
    fill(c);
    textSize(12);
    text(s, xPos + padding, yPos + padding, frameWidth - 2*padding, frameHeight - 2*padding);
  }

}