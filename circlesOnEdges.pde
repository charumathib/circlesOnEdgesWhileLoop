int diameter ; 
int CORNER_COLOR = #FAFBFC;
public void setup() {
  size(480, 120);
  background(0);
  diameter = 10*(width/height);
}
public void draw() {
  for (int x = 0; x<=width; x+=diameter) {
    for (int y = 0; y<=height; y+=diameter) {
      fillAndDrawCircle(x, y);
    }
  }
  fill(0);
}

void fillAndDrawCircle(int x, int y) { 
  fill(100, 100);
  // When it is the corner, make it white
  if ( (x == 0 || x == width) && (y == 0 || y == height)) { 
    fill(CORNER_COLOR);
  }
  // Draw only on the edges
  if ( y == 0 || x == 0 || x == width || y == height) { 
    ellipse(x, y, diameter, diameter);
  }
}