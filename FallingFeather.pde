class FallingFeather extends GameObject {

  FallingFeather() {
    this.x = random(0, width);
    this.y = random(-height, 0);
    this.xSpeed = random(-1,1);
    this.ySpeed = random(0.5, 1.5);
    showImage = loadImage("feather2.png");
    
    this.size = 50.0;
  }

 /*                                       not code share \/*/
  void display() {
    image(showImage, this.x, this.y, this.size, this.size/4);
  }
 
 
  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    // if off the bottom of the screen, move to the top
    if (this.y > height) {
      this.y = -this.size;
    }
    // about 5% of the time,
    // or if going off the left or right of the screen,
    // reverse x direction
    if (random(0, 1) > 0.95 || this.x < -this.size || this.x > width) {
      this.xSpeed = -this.xSpeed;
    }
  }
}