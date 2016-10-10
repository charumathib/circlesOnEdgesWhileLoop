int x, y;
public void setup() {
  size(480, 120);
  background(0);
}
public void draw() {
  for (x = 0; x<=480; x+=40) {
    for (y = 0; y<=120; y+=120) {
      fill(100, 100);
      ellipse(x, y, 40, 40);
    }
  }
}