//Emma sun
//sept, 16 2021
//1.3

//array
String[] words;
color[] colors;
int r = int(random(0, 6));
int c = int(random(0, 6));

//modes
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//gif
PImage[] gif;
int f;
int n;
int i;

//timer
int t;

//fonts
PFont paint;
PFont appo;

//score
int score;
int highscore;

//colours
color red = #CE1836;
color orange = #F85931;
color yellow = #EDB92E;
color green = #A3A948;
color blue = #009989;
color purple = #A55D9F;

//chance
int e = int(random(0, 2));


void setup() {
  textAlign(CENTER);
  size(800, 700, FX2D);

  mode = INTRO;

  //gif
  i = 0;
  f = 48;
  gif = new PImage[f];
  while (i < f) {
    gif[i] = loadImage("frame_"+i+"_delay-0.12s.gif");
    i++;
  }

  //font
  paint = createFont("Paint Drops.ttf", 50);
  appo = createFont("appopaint-Regular.otf", 50);


  //colour array
  colors = new
    color[6];
  colors[0] = red;
  colors[1] = orange;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = blue;
  colors[5] = purple;

  //word array
  words = new
    String[6];
  words[0] = "red";
  words[1] = "orange";
  words[2] = "yellow";
  words[3] = "green";
  words[4] = "blue";
  words[5] = "purple";
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode=" +mode);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h) {
    stroke(#687ED6); 
    strokeWeight(8);
  } else {
    noStroke();
  }
}

void reset() {
  score = 0;
  t = 0;
  r = int(random(0, 6));
  c = int(random(0, 6));
}



/*
text(words[1]) can make 1 variable for it to be randomaized
 int r = int(random(0,6)) has to be 6 cus wouldnt be able to choose 5 */
