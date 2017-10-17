ArrayList<GameObject> skyObjects = new ArrayList<GameObject>();

void setup() {
  noStroke();
  size(600, 400);
  for(int i = 0; i <5; i++){
    skyObjects.add(new SoaringBird());
    skyObjects.add(new FlittingBird());
    skyObjects.add(new FallingFeather());
    skyObjects.add(new FallingFeather());
  }
}

void draw() {
  background(173,216,230);
  
  for(GameObject gameObject : skyObjects){
  gameObject.move();
  gameObject.display();
  }
}