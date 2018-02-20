class Hearts extends Card {

  int suit = 4;

  public Hearts(String num) {

    super(num);
      
  }

  void suit() {

    fill(255, 0, 0);
    strokeWeight(2);

  }

}
