int[] coords = {
  240, 40, 280, 60, 300, 100, 260, 120, 250, 150
};

void setup() {
  size(330, 330);
  background(255);
  smooth();
  rectMode(CENTER); // show bounding boxes
}

void draw() {
  fill(0);
  text("Arcs", 10, 120);
  noFill();
  stroke(128);
  rect(35, 35, 50, 50);
  rect(105, 35, 50, 50);
  rect(175, 35, 50, 50);
  rect(95, 95, 100, 50);

  stroke(0);
  // arc(x, y, width, height, start, stop); start & stop in radians
  arc(35, 35, 50, 50, 0, 3.14 / 2.0); // lower quarter circle 
  arc(105, 35, 50, 50, -PI, 0);  // upper half of circle
  arc(175, 35, 50, 50, -PI / 6, PI / 6); // 60 degrees
  arc(95, 95, 100, 50, PI / 2, 3 * PI / 2); // 180 degrees
  
  fill(0);
  text("Spline Curve", 160, 120);
  noFill();
  // spline curve
  curve(190, 140, 230, 160, 250, 200, 210, 220);
  noStroke();
  fill(255, 0, 0);
  ellipse(190, 140, 3, 3);
  fill(0, 0, 255, 192);
  ellipse(250, 200, 3, 3);
  ellipse(230, 160, 3, 3);
  fill(255, 0, 0);
  ellipse(210, 220, 3, 3);
  
  // continuous spline curve
//  noFill();
  beginShape();
  curveVertex(coords[0], coords[1]);
  for (int i = 0; i < coords.length - 1; i += 2) {
    curveVertex(coords[i], coords[i+1]); // the first control point
    fill(0, 0, 255);
    ellipse(coords[i], coords[i+1], 4, 4);
    fill(255, 0, 0, 100);
  }
  curveVertex(coords[8], coords[9]);
  endShape();

  fill(0);
  text("Bezier Curve", 10, 200);
  noFill();
  
  ellipse(50, 275, 5, 5); // endpoints of curve
  ellipse(100, 275, 5, 5);
  noFill();
  stroke(200);
  line(50, 275, 25, 225);
  line(125, 225, 100, 275);
  fill(255, 0, 0);
  ellipse(25, 225, 5, 5);  // control points
  ellipse(125, 225, 5, 5); 
  stroke(0);
  noFill();
  bezier(50, 275, 25, 225, 125, 225, 100, 275);
  
  fill(0);
  text("Continuous Bezier", 160, 200);
  noFill();
  
  beginShape();
  vertex(180, 230); // first point
  bezierVertex(175, 185, 250, 210, 200, 260);
  bezierVertex(200, 300, 225, 300, 270, 280);
  endShape();
}