class FlittingBird extends GameObject {
  float minXSpeed = 2.0;
  float maxXSpeed = 5.0;
  float minYSpeed = -1.0;
  float maxYSpeed = 1.0;


  FlittingBird() {
    this.x = random(0, width);
    this.y = random(0, height);
    this.xSpeed = random(minXSpeed, maxXSpeed);
    this.ySpeed = random(minYSpeed, maxYSpeed);
    showImage = loadImage("flitbird.png");
    
    this.size = 30.0;
  }

  
  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    // if off the right side of the screen
    // move to just off the left side of the screen
    if (this.x > width) {
      this.x = -this.size;
    }
    // if off the top or bottom of the screen, reverse y speed
    if (this.y < -this.size || this.y > height) {
      this.ySpeed = -this.ySpeed;
    }
    // about 20% of the time, change speed a bit
    if (random(0,1) > 0.8) {
      this.ySpeed += random(-0.5, 0.5);
      this.ySpeed = max(this.minYSpeed, this.ySpeed);
      this.ySpeed = min(this.maxYSpeed, this.ySpeed);

      this.xSpeed += random(-0.5, 0.5);
      this.xSpeed = max(this.minXSpeed, this.xSpeed);
      this.xSpeed = min(this.maxXSpeed, this.xSpeed);
    }
  }
}