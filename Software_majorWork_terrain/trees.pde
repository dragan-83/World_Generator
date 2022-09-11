void tree(int treeX, int treeY) {
  //location
  //base
  int baseHeight=int(random(1, 12));
  for (int i=0; i<baseHeight; i++) {
    fill(0);
    world[treeX][treeY-i]=4; //sometimes deosnt work
  }
  //top
  for (int b=0; b<3; b++) {
    if (treeX+1>width) {
    world[treeX-1][ treeY-baseHeight+b]=5;
    }
    if (treeX+1<width) {
      world[treeX][ treeY-baseHeight+b]=5;
      world[treeX+1][ treeY-baseHeight+b]=5;
    }
  }
  //branch
  //leaves
}
