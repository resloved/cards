Game game;
int scale = 6;

void setup() {

  size(600, 400);
  frameRate(60);
  game = new Game(8, 3, scale);

}

void draw() {

  background(255);
  game.update();

}

void keyReleased() {

    if (keyCode == LEFT) {
      game.changeSelected(-1);
    }

    if (keyCode == RIGHT) {
      game.changeSelected(1);
    }

    if (key == ENTER) {
      game.playCard();
    }

    if (key == BACKSPACE) {
      game.drawCard();
    }

    if (key == ' ') {
      game.endTurn();
    }

}
