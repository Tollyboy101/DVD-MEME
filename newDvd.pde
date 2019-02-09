class dvd {
  float x, y;
  float xSpeed, ySpeed;
  PImage dvd;
  float r, g, b;

  dvd() {
    x = random(width);
    y = random(height);
    xSpeed = random(4,6);
    ySpeed = random(4,6);
    dvd = loadImage("dvd.png","png");
  }
  void run(){
    this.edges();
    this.update();
  }
  void pickColour() {
    r = random(100, 256);
    g = random(100, 256);
    b = random(100, 256);
  }

  void update() {
    tint(r, g, b);
    //rect(x,y,80,60);
    image(dvd, x, y, 128, 128);

    x += xSpeed;
    y += ySpeed;
  }

  void edges() {
    if (x+128 >= width) {
      x = width - 128;
      xSpeed = -xSpeed;
      pickColour();
      
    } else if (x <= 0) {
      xSpeed = -xSpeed;
      pickColour();
    }
    if (y+128 >= height) {
      y = height - 128;
      ySpeed = -ySpeed;
      pickColour();
      
    } else if (y <= 0) {
      ySpeed = -ySpeed;
      pickColour();
    }
  }
}
