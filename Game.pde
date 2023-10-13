//imports
import java.util.Random;

//variables
int simonColour = #222222;
int time = 0;
int clicks = 0;
color clickingColour;
int colourNum;
boolean repeatPattern = false;


//buttons
Button red;
Button green;
Button purple;
Button blue;

void setup() {
  getRandNum();
  //format
  size(500, 500);
  rectMode(CENTER);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(32);

  //instantiating buttons
  red = new Button();
  green = new Button();
  purple = new Button();
  blue = new Button();
}

void draw() {
  background(#555555);
  drawBoard();
  simonPattern();
}

void drawSimonText() {
  fill(#FFFFFF);
  text("SIMON", 250, 250);
}

void drawBoard() {
  stroke(#000000);
  fill(simonColour);
  ellipse(250, 250, 400, 400);
  fill(simonColour);
  stroke(simonColour);
  rect(250, 250, 25, 380);
  rect(250, 250, 380, 25);

  //drawing buttons
  red.drawButton(1, red.colours[red.onOff[0]][0], simonColour);
  green.drawButton(4, green.colours[green.onOff[1]][1], simonColour);
  blue.drawButton(2, blue.colours[blue.onOff[2]][2], simonColour);
  purple.drawButton(3, purple.colours[purple.onOff[3]][3], simonColour);

  //game title
  drawSimonText();
}

//MOUSE USER FUNCTIONS
//buttons on
void mousePressed() {
  clickingColour = get(mouseX, mouseY);
  //collision for red button
  if (clickingColour == -10740970) {
    for (int i = 0; i < 4; i++) {
      red.onOff[i] = 1;
    }
  }

  //collision for green button
  if (clickingColour == -15311825) {
    for (int i = 0; i < 4; i++) {
      green.onOff[i] = 1;
    }
  }

  //collision for yellow button
  if (clickingColour == -13035940) {
    for (int i = 0; i < 4; i++) {
      purple.onOff[i] = 1;
    }
  }

  //collision for blue button
  if (clickingColour == -15327396) {
    for (int i = 0; i < 4; i++) {
      blue.onOff[i] = 1;
    }
  }
}

//buttons off
void mouseReleased() {
  for (int i = 0; i < 4; i++) {
    red.onOff[i] = 0;
    green.onOff[i] = 0;
    purple.onOff[i] = 0;
    blue.onOff[i] = 0;
  }
}

//
void mouseClicked() {
  clicks += 1;
}


//GAME
void simonPattern() {
  for (int i = 0; i < 4; i++) {
    if (colourNum == 0) {
      red.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        red.onOff[i] = 0;
      }
    } else if (colourNum == 1) {
      green.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        green.onOff[i] = 0;
      }
    } else if (colourNum == 2) {
      purple.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        purple.onOff[i] = 0;
      }
    } else if (colourNum == 3) {
      blue.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        blue.onOff[i] = 0;
      }
    }
  }

  //after one click
  while (clicks > 1) {
    for (int i = 0; i < 4; i++) {
      if (colourNum == 0) {
        red.onOff[i] = 1;
        if (time + 1*1000 < millis()) {
          red.onOff[i] = 0;
        }
      } else if (colourNum == 1) {
        green.onOff[i] = 1;
        if (time + 1*1000 < millis()) {
          green.onOff[i] = 0;
        }
      } else if (colourNum == 2) {
        purple.onOff[i] = 1;
        if (time + 1*1000 < millis()) {
          purple.onOff[i] = 0;
        }
      } else if (colourNum == 3) {
        blue.onOff[i] = 1;
        if (time + 1*1000 < millis()) {
          blue.onOff[i] = 0;
        }
      }
    }
  }
  
}

void simonPatternInitial() {

  for (int i = 0; i < 4; i++) {
    if (colourNum == 1) {
      red.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        red.onOff[i] = 0;
      }
    } else if (colourNum == 2) {
      green.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        green.onOff[i] = 0;
      }
    } else if (colourNum == 3) {
      purple.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        purple.onOff[i] = 0;
      }
    } else if (colourNum == 4) {
      blue.onOff[i] = 1;
      if (time + 1*1000 < millis()) {
        blue.onOff[i] = 0;
      }
    }
  }
}

void getRandNum() {
  Random rand = new Random();
  int randNum = rand.nextInt(4);
  colourNum = randNum;
  print(colourNum);
}
