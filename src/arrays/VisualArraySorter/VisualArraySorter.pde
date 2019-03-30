/* Paste the code into a new Processing sketch and complete the steps. */

//1. create an array of ints. don't initialize it yet.
int integers[];
void setup() {
  //2. set the size of your window
  size(600,600);
  //  if you are using Processing 3, you cannot use variables
  //  because the developers don't know how programming is supposed to work.

  //3. initialize your array with the built in width variable
  integers = new int[width];
  //4. initialize the ints in the array with random numbers
  //   from 0 to the built in height variable
  random();
  //5. call the noStroke() method
noStroke();
}

void draw() {
  //6. set the background color with background(r, g, b);
background(20,100,100);
  //7. set the color for your graph
fill(82, 180, 240);
  //8. draw a rectangle for each int in your array.
  for(int a=0; a<integers.length; a++){
  //   the x value will be the current index in the array
  rect(a, height, 1, -integers[a]);
  }
  //   the y value will the height variable
  //   the width is 1 (one)
  //   the height is negative the value of the element at the current index of the array


  //9. call the stepSort method
stepSort(integers);
  //10. extract the code that randomizes the array into a method.

  //11. call the method you made in step 10 when the mouse is pressed
  if(mousePressed){
   random(); 
  }
  
}
void random(){
  for(int i=0; i<width; i++){
 integers[i] = (int)random(width);
}
}
void stepSort(int[] arr) {
  for (int i = 1; i < arr.length; i++) {
    if (arr[i - 1] > arr[i]) {
      int t = arr[i];
      arr[i] = arr[i - 1];
      arr[i - 1] = t;
    }
  }
}