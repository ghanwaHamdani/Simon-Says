class Button{
  final color[][] colours = { /*off*/{#5C1B16, #165c2f, #161f5c, #39165c}, /*on*/ {#fc483a, #3bff81, #3c54fa, #9d3dfc}};
  byte[] onOff = {0, 0, 0, 0};
  
  void drawButton(int quadrant, color buttonColour, color simonColor){
    pushMatrix();
    translate(250,250);
    rotate(-HALF_PI*(quadrant+1));
    translate(-250,-250);
    fill(buttonColour);
    arc(250,250,380,380,0,HALF_PI);
    fill(simonColour);
    arc(250,250,180,180,0,HALF_PI);
    popMatrix();
  }
}
