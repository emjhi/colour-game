void gameover() {
  background(255, 0, 0);

  if (score >= highscore) highscore = score;

//text 
  textFont(appo);
  textSize(100);
  fill(255);
  text("GAMEOVER", 400, 200);
  textSize(50);
  text("score:" + score, 150, 400);
  text("highscore:" + highscore, 550, 400);

  //buttons
  fill(255);
  tactile(75, 500, 200, 100);
  rect(75, 500, 200, 100);
  tactile(525, 500, 200, 100);
  rect(525, 500, 200, 100);

  //button text
  fill(0);
  text("RETRY", 175, 570);
  text("QUIT", 625, 570);
}

void gameoverClicks() {
  if (mouseX >= 75 && mouseX <= 275 && mouseY >= 500 && mouseY <= 600) {
    mode = INTRO;
    reset();
  }
  if (mouseX >= 525 && mouseX <= 725 && mouseY >= 500 && mouseY <= 600) {
    exit();
  }
}
