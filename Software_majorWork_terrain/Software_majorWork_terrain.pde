
int caveDensity=250; // number of caves
int blockY=int(random(200,700));
int worldWidth;
int worldHeight;
int numberOfSections=20;
int[][] world;
Section[] sections=new Section[numberOfSections];

void setup() {
  noStroke();
  fullScreen();
  background(255);
  worldWidth=width;
  worldHeight=height;
  world=new int[worldWidth][worldHeight];
  designateWorld();
  createWorld();
  caveGeneration();
  drawWorld();
}


void draw() {
}
