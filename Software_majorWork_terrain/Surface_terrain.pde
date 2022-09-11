class block{
  int x,y;
  boolean isCave=false;
  int type;
}


// creates the world
void createWorld() {
  println(blockY, worldWidth, worldHeight);
  world[0][blockY]=1;
  for (int i=0; i<worldWidth; i++) {
    for (int j=0; j<sections.length; j++) {
      if (i<=200*j && i>(200*j)-200) {
        if (sections[j].type==0 && blockY <worldHeight && blockY>0) {
          flatSection();
        } else if (sections[j].type== -1 && blockY <worldHeight && blockY>0) {
          upSection();
        } else if (sections[j].type== +1 && blockY<worldHeight && blockY>0) {
          downSection();
        }
      }
    }
    world[i][blockY]= 1;

    for (int k=0; k<blockY; k++) {
      //world[i][k]=0;
    }
    for (int k=blockY+1; k<worldHeight; k++) {
      world[i][k]=3;
    }
    if (blockY%(int(random(4, 12)))==1) {
      tree(i, blockY);
    }
  }
}

void drawWorld() {
  for (int i=0; i<worldWidth; i++) {
    for (int j=0; j<worldHeight; j++) {
      noStroke();
      if (world[i][j]==0) {//sky
        fill(135, 206, 235);
        square(i, j, 1);
      } else if (world[i][j]==1) {//grass
        fill(86, 125, 70);
        square(i, j, 1);
      } else if (world[i][j]==2) {//dirt
        fill(165, 42, 42);
        square(5, j, 1);
      } else if (world[i][j]==3) {//stone
        fill(0);
        square(5, j, 1);
      } else if (world[i][j]==4) {//log
        fill(150, 75, 0);
        square(5, j, 1);
      } else if (world[i][j]==5) {//leaves
        fill(45, 90, 39);
        square(5, j, 1);
      }
    }
  }
}

//sets the sections types
void designateWorld() {
  print("designateWorld");
  createSections();
  for (int j=0; j<sections.length; j=j+1) {
    int area=int(random(1, 4));
    if (area==1) {
      sections[j].type=0;
    } else if (area==2) {
      sections[j].type=+1;
    } else if (area>=3) {
      sections[j].type=-1;
    }
  }
  println(".");
}


void flatSection() {
  int direction=int(random(1, 30));
  // up neibour
  if (direction<20) {
    blockY=blockY+0;
  } else if (direction<25) {
    blockY=blockY+1;
  } else if (direction<30) {
    blockY=blockY-1;
  }
}

void upSection() {
  int direction=int(random(1, 30));
  if (direction<20) {
    blockY=blockY-1;
  } else if (direction<25) {
    blockY=blockY+0;
  } else if (direction<30) {
    blockY=blockY+1;
  }
}

void downSection() {
  //sectionTrends();
  int direction=int(random(1, 30));
  if (direction<20) {
    blockY=blockY+1;
  } else if (direction<25) {
    blockY=blockY+0;
  } else if (direction<30) {
    blockY=blockY-1;
  }
}
