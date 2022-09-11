
class Section {
  /*
  flat is 0
   up is -1
   down is +1
   */
  float type;
  int sectionWidth;
  int startY, endY;
  int startX, endX;

  Section(float type, int sectionWidth, int startX, int endX, int startY, int endY) {
    this.type = type;
    this.sectionWidth = sectionWidth;
    this.startX = startX;
    this.startY = startY;
    this.endX = endX;
    this.endY = endY;
  }
}

void createSections() {
  for (int i=0; i<sections.length; i++) {
    sections[i]=new Section(1, width/numberOfSections, i*width/numberOfSections, i+1*width/numberOfSections-1, 450, 450);
  }
}
