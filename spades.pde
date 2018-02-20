class Spades extends Card {

  int suit = 3;

  public Spades(String num) {

    super(num);
      
  }

  @Override
  void suit(float scale) {

    fill(255);
    stroke(0);
    strokeWeight(3);
    line(-width/6*scale, -width/6*scale, width/6*scale, width/6*scale);
    line(width/6*scale, -width/6*scale, -width/6*scale, width/6*scale);

  }

}
