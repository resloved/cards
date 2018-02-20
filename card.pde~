class Card {

  // Value, Size, state, etc.

  int height = 10;
  int width = 7;
  int suit = 0;

  String value = "1";
  PFont font;

  public Card (String num) {

    value = num;
    font = loadFont("Demi-18.vlw");
      
  }
  
  void display(int x, int y, float scale) {

    float offset = 3;
    float r = scale * 1.5;

    fill(255);
    stroke(0);
    strokeWeight(offset);

    pushMatrix();

    // Positional Offset
    translate(x - offset, y - offset - height*scale);

    // Centering Offset
    translate(-width * scale / 2, 0);
    
    rect(0, 0, width*scale, height*scale, r, r, r, r);

    details(scale);

    popMatrix();

  }

  void details(float scale) {

    textFont(font);
    pushMatrix();

    // Center Suit
    translate(width * scale / 2, height * scale / 2);
    suit(scale);

    popMatrix();

    // Corners
    pushMatrix();

    // Top-Left Suit
    translate(width * scale / 5, height * scale / 5);
    suit(scale / 2);

    // Bot-Left Number
    translate(0, height * scale * 3 / 5);
    number(scale);

    // Bot-Right Suit
    translate(width * scale * 3 / 5, 0);
    suit(scale / 2);


    // Top-Right Number
    translate(0, -height * scale * 3 / 5);
    number(scale);

    popMatrix();

  }

  void suit(float scale) {
    
    fill(0);
    stroke(0);
    strokeWeight(0);
    ellipse(0, 0, width/3*scale, width/3*scale);

  }

  void number(float scale) {

    fill(0);
    textSize(scale*2);
    text(value, -scale*2/3, scale*2/3); 

  }

}
