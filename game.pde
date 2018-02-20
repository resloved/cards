class Game {

  Deck deck;

  ArrayList<Hand> hands = new ArrayList<Hand>();
  int active = 0;

  int scale;
  int padding;

  int swapTime = 8;
  int showing;
  int hidden;
  
  public Game(int amt, int players, int size) {

    deck = new Deck(50);

    scale = size;
    padding = 4*scale;
    hidden = height+padding*4;
    showing = height-padding;

    for (int i = 0; i < players; i++) {
      hands.add(new Hand(hidden, 10, 8, deck));
    }

    hands.get(active).move(0, showing, swapTime);

  }

  void update() {

    // Anything that needs to be checked or changed each frame

    display();

  }

  void display() {

    for (Hand hand : hands) {
      hand.display(scale);
    }

    hands.get(active).display(scale);

  }

  void endTurn() {

    active = active + 1 > hands.size()-1 ? 0 : active + 1;

    for (Hand hand : hands) {
      hand.move(0, hidden, swapTime);
    }

    hands.get(active).move(0, showing, swapTime);

    
  }

  void playCard() {

    Hand cur = hands.get(active);
    
    if (cur.playable()) {
      cur.play();
    }
    
  }

  void drawCard() {

    if (deck.size() > 0) {
      hands.get(active).add(1, deck);
    }
    
  }

  void changeSelected(int direction) {

    hands.get(active).selectNext(direction);

  }

}
