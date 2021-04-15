//If spacebar is held down, change Channah picture
//Press 1 2 or 3 for different backgrounds

PImage channah1;
PImage channah2;
PImage space;
PImage beach;
PImage park;
PImage channahFace; //holder for moving img
PImage bg; //holder for background img

void setup(){
  
  size(1000, 500);
  imageMode(CENTER);
  channah1 = loadImage("ChannahHead1.png");
  channah2 = loadImage("ChannahHead2.png");
  space = loadImage("space.jpg");
  beach = loadImage("beach.jpg");
  park = loadImage("park.jpg");
  bg = park;
  
}

void draw(){
  
  channahFace = channah1;
  background(bg);
  
  if (keyPressed) {
    if (key == 32){
      channahFace = channah2;
    }
  }
  if (keyPressed) {
    if (key == 49) {
      bg = park;
    }  
    if (key == 50) {
      bg = beach;
    }  
    if (key == 51) {
      bg = space;
    }
  }
  
  image(channahFace, mouseX, mouseY, 200, 200);
  
}
