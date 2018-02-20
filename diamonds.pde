class Diamonds extends Card {

  int suit = 2;

  public Diamonds (String num) {

    super(num);

  }

  @Override
  void suit(float scale) {

    fill(255);
    stroke(255, 0, 0);
    strokeWeight(3);
    line(-width/6*scale, -width/6*scale, width/6*scale, width/6*scale);
    line(width/6*scale, -width/6*scale, -width/6*scale, width/6*scale);

  }

}
