class Hand extends Moveable {
  
  // Holds and positions cards and has a position on screen

  float scale;
  ArrayList<Card> cards;
  int selected;


  public Hand(int y, float scale, int amt, Deck deck) {

    // Find position and add cards to hand

    super(0, y); 
    cards = deck.deal(amt);
    selected = int(amt/2);

  }

  void display(int scale) {

    int center = width / 2;
    int dist = 5 * scale;
    int start = center - dist * (cards.size()-1) / 2; 

    if (playable()) {

        pushMatrix();

        step(frameCount);
        translate(0, pos.y);

        // Left
        for (int i = 0; i < selected; i++) {
          cards.get(i).display(dist * i + start, 0, scale);
        }

        // Right
        for (int i = cards.size()-1; i > selected; i--) {
          cards.get(i).display(dist * i + start, 0, scale);
        }

        float enlarged = 1.2;

        // Selected
        cards.get(selected).display(dist * selected + start, 0, scale * enlarged);

        popMatrix();

    }

  }


  void add(int amt, Deck deck) {

    cards.addAll(deck.deal(amt));

  }
  
  void selectNext(int direction) {

    if (selected+direction >= 0 && selected+direction < cards.size()) {
      selected += direction;
    }

  }

  Card play() {

    Card played = cards.get(selected);
    cards.remove(selected);

    // Change Selected
    if (cards.size() == 0) {
        selected = 0;
    } else if (selected > cards.size()-1) {
        selected--;
    }

    return played;

  }

  boolean playable() {

    return cards.size() > 0;

  }

}
