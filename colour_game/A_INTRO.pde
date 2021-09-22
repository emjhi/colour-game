void intro() {
  //intro gif
  image(gif[n], 0, 0, width, height);
  if (frameCount % 5 == 0) n = n + 1;
  if ( n == f) n = 0;

  //title
  fill(#BDCAFA);
  textFont(paint);
  textSize(125);
  text("COLOUR", 400, 200);
  text("GAME", 400, 350);

  //buttons
  fill(#687ED6);
  tactile(75, 500, 200, 100);
  rect(75, 500, 200, 100);
  tactile(525, 500, 200, 100);
  rect(525, 500, 200, 100);
  
  //button text
  fill(0);
  textFont(appo);
  textSize(50);
  text("START", 175, 570);
  text("QUIT", 625, 570);
}

void introClicks() {
  if (mouseX >= 75 && mouseX <= 275 && mouseY >= 500 && mouseY <= 600) {
    mode = GAME;
  }
  if (mouseX >= 525 && mouseX <= 725 && mouseY >= 500 && mouseY <= 600) {
    exit();
  }
}
