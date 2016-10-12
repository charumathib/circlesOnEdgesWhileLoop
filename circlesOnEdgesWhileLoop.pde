int diameter ; 

public void setup() {
  size(480, 120);
  background(0);
  diameter = 10*(width/height);
}
public void draw() {
  int x = 0, y = 0;
  while (x<=width) {
    while ( y<=height) {
      fillAndDrawCircle(x, y);
      y+=diameter;
    }
    x+=diameter;
    y = 0;
  }
  fill(0);
}

void fillAndDrawCircle(int x, int y) { 
  fill(100, 100);
  // Fill the corner circles with WHITE color
  if ( (x == 0 || x == width) && (y == 0 || y == height)) { 
    fill(#FAFBFC);
  }
  
  // Draw Circles along the edges. These will show up as semi circles. 
  if ( y == 0 || x == 0 || x == width || y == height) { 
    ellipse(x, y, diameter, diameter);
  }
}