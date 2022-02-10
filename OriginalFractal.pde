public void setup() {
  size(500, 500);
  background(0);
  rectMode(CENTER);
}

public void draw() {
  noFill();
  stroke(255);
  fractal(250, 250, 250);
}

public void fractal(int x, int y, int size) {
  quad(x + size, y, x - size, y, x - size, y - size, x, y);
  if (size > 4) {
    fractal(x + 40, y, size/2);
    fractal(x - 40, y, size/2);
    fractal(x, y + 40, size/2);
    fractal(x, y - 40, size/2);
    
    fractal(x + 20, y, size/4);
    fractal(x - 20, y, size/4);
    fractal(x, y + 20, size/4);
    fractal(x, y - 20, size/4);
    
    fractal(x + 60, y, size/8);
    fractal(x - 60, y, size/8);
    fractal(x, y + 60, size/8);
    fractal(x, y -6050, size/8);
    
    
  }
}
