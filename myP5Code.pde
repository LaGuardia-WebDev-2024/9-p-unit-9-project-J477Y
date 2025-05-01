setup = function() {
    size(400, 400);
    // Set background color to gray (added CSS through HTML)
    document.body.style.backgroundColor = "#d3d3d3";
};

var answer = 1;

draw = function(){
  background(100,100,100);
  
  // Draw an ellipse (main circle)
  fill(0, 0, 0);
  ellipse(200, 200, 375, 375);
  
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  
  // Draw the text based on the 'answer'
  fill(255, 255, 255);
  
  if (answer == 1) {
    text("friday", 176, 200);
  }
  if (answer == 2) {
    text("thursday", 176, 200);
  }
  if (answer == 3) {
    text("wednesday", 176, 200);
  }
  if (answer == 4) {
    text("tuesday", 176, 200);
  }
  if (answer == 5) {
    text("monday", 176, 200);
    // Extra: Change the background when answer is 5
    background(50, 50, 200);
  }

  // Show "lucky day" text on mouse press at random
  if (mousePressed){
    text("this will be your lucky day", random(0, 600), random(0, 400));
  }

  drawShark(-100, -50);
  drawCircle(300, 300, 50); // Added new custom function for drawing circles
};

// Mouse clicked event sets a random number between 1 and 5
mouseClicked = function(){
  answer = round(random(1, 5));
};

var drawCircle = function(x, y, diameter){
  fill(200, 100, 100);
  ellipse(x, y, diameter, diameter);
};

// Function to draw shark
var drawShark = function(sharkX, sharkY){
  fill(150, 176, 176);
  noStroke();
  ellipse(sharkX + 315, sharkY + 146, 200, 60);
  triangle(sharkX + 290, sharkY + 121, sharkX + 338, sharkY + 89, sharkX + 343, sharkY + 117);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 114);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 174);
  triangle(sharkX + 250, sharkY + 163, sharkX + 290, sharkY + 169, sharkX + 290, sharkY + 190);
  triangle(sharkX + 378, sharkY + 163, sharkX + 400, sharkY + 168, sharkX + 390, sharkY + 175);
  fill(200, 200, 200);
  ellipse(sharkX + 315, sharkY + 159, 175, 30);
  strokeWeight(10);
  stroke(0, 0, 0);
  point(sharkX + 234, sharkY + 142);
  stroke(120, 120, 120);
  strokeWeight(4);
  line(sharkX + 275, sharkY + 165, sharkX + 279, sharkY + 146);
  line(sharkX + 267, sharkY + 161, sharkX + 273, sharkY + 144);
  line(sharkX + 260, sharkY + 157, sharkX + 266, sharkY + 145);
};

