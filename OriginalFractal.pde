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

public void fractal(int x, int y, int siz) {
  quad(x + siz, y, x - siz, y, x - siz, y - siz, x, y);
  if (siz > 4) {
    fractal(x + 40, y, siz/2);
    fractal(x - 40, y, siz/2);
    fractal(x, y + 40, siz/2);
    fractal(x, y - 40, siz/2);
    
    fractal(x + 20, y, siz/4);
    fractal(x - 20, y, siz/4);
    fractal(x, y + 20, siz/4);
    fractal(x, y - 20, siz/4);
    
    fractal(x + 60, y, siz/8);
    fractal(x - 60, y, siz/8);
    fractal(x, y + 60, siz/8);
    fractal(x, y - 60, siz/8);   
  }
}
