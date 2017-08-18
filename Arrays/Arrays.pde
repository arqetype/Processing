int[] data; // declare the array
 
void setup() {
 size(200, 200); 
}

void draw() {
 int[] x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 29 };
 fill(0);
 for (int i = 0; i < x.length; i++) {
   rect(0, i*10, x[i], 8);
 }
 data = new int[5]; // create the array
 // assign values to the array
 data[0] = 19;
 data[1] = 40;
 data[2] = 75;
 data[3] = 76;
 data[4] = 90;
 for (int i = 0; i < data.length; i++) {
   line(data[i], 100, data[i], 200);
   println(data[i]);
 }
 float[] sineWave;
 sineWave = new float[100];
 for (int i = 0; i < sineWave.length; i++) {
   float r = map(i, 0, 100, 0, TWO_PI);
   sineWave[i] = abs(sin(r));
 }
 for (int i = 0; i < sineWave.length; i++) {
   stroke(sineWave[i] * 255);
   line(100 + i, 0, 100 + i, 100);
 }
  String[] trees = { "ash", "oak" };

  append(trees, "maple"); // INCORRECT! Does not change the array
  printArray(trees); // Prints [0] "ash", [1] "oak"
  println();
  trees = append(trees, "maple"); // Add "maple" to the end
  printArray(trees); // Prints [0] "ash", [1] "oak", [2] "maple"
  println();
  // Add "beech" to the end of the trees array, and creates a new
  // array to store the change

  String[] moretrees = append(trees, "beech");

  // Prints [0] "ash", [1] "oak", [2] "maple", [3] "beech"
  printArray(moretrees);
  String[] tree = { "lychee", "coconut", "fig" };

  tree = shorten(tree); // Remove the last element from the array
  printArray(tree); // Prints [0] "lychee", [1] "coconut"
  println();
  tree = shorten(tree); // Remove the last element from the array
  printArray(tree); // Prints [0] "lychee"
}