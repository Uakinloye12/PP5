class Bubble {

  float x;
  float y;
  float diameter;

  Bubble(float tempD) {
    x = width/2;
    y = height;
    diameter = tempD;
  }

  void ascend() {
    y=height--;
    x = x + random(2,2);
  }

  void display() {
    stroke(0);
    fill(127,100);
    ellipse(x, y, diameter, diameter);
  }

  void top() {
    if (y > 500) {
      x = width/2 +10;
      y = width/2 +250;
    }
  }
}

Bubble b1;
Bubble b2;

void setup() {
  size(1000, 1000);
  b1 = new Bubble(89);
  b2 = new Bubble(23);
}

void draw() {
  background(255);
  b1.ascend();
  b1.display();
  b1.top();

  b2.ascend();
  b2.display();
  b2.top();
}
