import java.util.Collections;

class Deck {

  // Contians all deck functionality. Shuffle, deal, etc. 

  ArrayList<Card> stack = new ArrayList<Card>();
  String[] faces = {"1","2","3","4","5","6","7","8","9","0","J","Q","K"};

  public Deck(int amt) {

    // Hearts
    for (String face : faces) {
      stack.add(new Hearts(face));
    }

    // Clubs
    for (String face : faces) {
      stack.add(new Clubs(face));
    }

    // Spades
    for (String face : faces) {
      stack.add(new Spades(face));
    }

    // Diamonds
    for (String face : faces) {
      stack.add(new Diamonds(face));
    }

    shuffle();

  }

  Card pull() {

    Card result = stack.get(stack.size() - 1);
    stack.remove(stack.size() - 1);
    return result;

  }

  ArrayList<Card> deal(int amt) {

    ArrayList<Card> dealt = new ArrayList<Card>();

    for (int i = 0; i < amt; i++) {
      dealt.add(pull());
    }

    return dealt;

  }

  int size() {

    return stack.size();

  }

  void shuffle() {

    // Random reorder
    Collections.shuffle(stack);

  }

}
