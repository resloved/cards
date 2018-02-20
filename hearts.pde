class Hearts extends Card {

  int suit = 4;

  public Hearts(String num) {

    super(num);
      
  }

  @Override
  void suit(float scale) {

    fill(255);
    stroke(255, 0, 0);
    strokeWeight(3);
    ellipse(0, 0, width/3*scale, width/3*scale);

  }

}
