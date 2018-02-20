class Clubs extends Card {

  int suit = 1;

  public Clubs(String num) {

    super(num);
      
  }

  @Override
  void suit(float scale) {

    fill(255);
    stroke(0);
    strokeWeight(3);
    ellipse(0, 0, width/3*scale, width/3*scale);

  }

}
