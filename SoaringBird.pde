class SoaringBird extends GameObject{
  float minXSpeed = 1.0;
  float maxXSpeed = 3.0;

  SoaringBird() {
    this.x = random(0, width);
    this.y = random(0, height);
    this.xSpeed = random(this.minXSpeed,this.maxXSpeed);
    showImage = loadImage("soarbird.png");
    
    this.size = 75.0;
  }

  
  void move() {
    this.x += this.xSpeed;
    // if off the right side of the screen,
    // move to just off the left side of the screen
    if (this.x > width) {
      this.x = -this.size;
    }
  }
}