public void setup() {
  size(1000, 1000); 
}
public void draw() {
  background(0);
  myFractal(500,500,500);
}
public void myFractal(int x, int y, int siz) {
  if(siz > 10) {
    myFractal(x-siz / 2, x, siz / 2);
    myFractal(x+siz / 2, y, siz / 2);
    myFractal(y-siz / 2, x, siz / 2);
    myFractal(y+siz / 2, y, siz / 2);
  }
}
