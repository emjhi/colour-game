void game() {
  //background
  fill(#A4FF90);
  rect(0, 0, 400, 700);//true
  fill(#FFBCBC);
  rect(400, 0, 400, 700);//false

  //t/f  text
  textFont(appo);
  textSize(75);
  fill(100);
  text("TRUE", 200, 100);
  text("FALSE", 600, 100);

  //timer
  t = t + 4;
  if (t >= 700) t = 700;
  fill(255);
  rect(50, 125, 700, 25);
  fill(0);
  rect(50, 125, t, 25);

  if (t >= 700) mode = GAMEOVER;

  textSize(100);
  fill(colors[c]);
  text(words[r], 400, 400);
}

void gameClicks() {
  //println(c, r, e);
  if (mouseX >= 0 && mouseX <= 400 && mouseY >= 0 && mouseY <= 700) {
    if (c == r) { //match
      score++;
      t = 0;
      e = int(random(0, 2));
      r = int(random(0, 6));
      c = int(random(0, 6));

      //chance
      if (e >= 1) {
        r = int(random(0, 6));
        c = r;
      } else { 
        while (c == r) {
          r = int(random(0, 6));
          c = int(random(0, 6));
        }
      }
    } else {// doesnt mathc
      mode = GAMEOVER;
    }
  } else { // doesnt match
    if (c == r) {
      mode = GAMEOVER;
    } else {//match
      score++;
      t = 0;
      e = int(random(0, 2));
      r = int(random(0, 6));
      c = int(random(0, 6));

      //chance
      if (e >= 1) { 
        c = r;
      } else {
        while (c == r) {
          r = int(random(0, 6));
          c = int(random(0, 6));
        }
      }
    }
  }
}
