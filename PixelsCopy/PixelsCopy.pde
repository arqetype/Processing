PImage source;       // Source image
PImage destination;  // Destination image

void setup() {
  size(200, 200);
  source = loadImage("flower.jpg");  
  // The destination image is created as a blank image the same size as the source.
  destination = createImage(source.width, source.height, RGB);
}

void draw() {  
  float threshold = 127;

  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();
  
  // Since we are looking at left neighbors
  // We skip the first column
  for (int x = 1; x < width; x++) {
    for (int y = 0; y < height; y++ ) {
      // Pixel location and color
      int loc = x + y*source.width;
      color pix = source.pixels[loc];

      // Pixel to the left location and color
      int leftLoc = (x-1) + y*source.width;
      color leftPix = source.pixels[leftLoc];

      // New color is difference between pixel and left neighbor
      float diff = abs(brightness(pix) - brightness(leftPix))*2;
      destination.pixels[loc] = color(diff);
    }
  }

  //for (int x = 0; x < source.width; x++) {
  //  for (int y = 0; y < source.height; y++ ) {
  //    int loc = x + y*source.width;
  //    // Test the brightness against the threshold
  //    if (brightness(source.pixels[loc]) > threshold) {
  //      destination.pixels[loc]  = color(255,100,0);  // White
  //    }  else {
  //      destination.pixels[loc]  = color(0,200,255);    // Black
  //    }
  //  }
  //}

  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination,0,0);
}