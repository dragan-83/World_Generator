void caveGeneration() {
  for (int i=0; i<caveDensity; i++) {
    int randomY=0, randomX=0;
    while (world[randomX][randomY]!=3) {
      randomX=int(random(0, worldWidth));
      randomY=int(random(0, worldHeight));
    }
    createCave(randomX, randomY);
  }
}

void createCave(int startX, int startY) {
  for (int i=0; i<50; i++) {
    for (int j=0; j<10; j++) {
      int tempStartX=-3;
      int tempStartY=-3;
      while (tempStartX>=worldWidth || tempStartX<=0) {
        tempStartX=startX+int(random(-15, 15));
      }
      while (tempStartY>=worldHeight || tempStartY<=0) {
        tempStartY=startY+int(random(-15, 15));
      }
      world[tempStartX][tempStartY]=0;
    }
  }
}
