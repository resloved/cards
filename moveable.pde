class Moveable {

  PVector pos = new PVector(0,0);
  PVector direction = new PVector(0,0);

  int startFrame;
  int lastFrame;
  int endFrame = -1;

  float rotation = 0;
  float spin = 0;

  public Moveable(int x, int y) {

    pos = new PVector(x, y);

  }

  void move(int x, int y, int time) {

    startFrame = frameCount;
    lastFrame = frameCount;
    endFrame = startFrame + time;

    direction = new PVector(x - pos.x, y - pos.y);

  }

  void move(int x, int y, float rotation, int time) {

    startFrame = frameCount;
    lastFrame = frameCount;
    endFrame = startFrame + time;

    direction = new PVector(x - pos.x, y - pos.y);

    spin = rotation;

  }

  void step(int cur) {
    
    if (cur <= endFrame) {
        float pct = float((cur - lastFrame))/float((endFrame-startFrame));

        pos = new PVector(pct * direction.x + pos.x,
                          pct * direction.y + pos.y);

        rotation += pct * spin;
        lastFrame = cur;
    }

  }

}
