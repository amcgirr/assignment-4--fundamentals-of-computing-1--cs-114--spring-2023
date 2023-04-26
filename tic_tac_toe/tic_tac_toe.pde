void setup() {
  size(500, 500);
  for(int i=0; i<cols; i++) {
    for(int j=0; j<rows; j++) {
      board[i][j]= new Cell(i*166,j*166,166,166);
    }
  }
}

void draw() {
  for(int i=0; i<cols; i++) {
    for(int j=0; j<rows; j++) {
      board[i][j].display();//display cells
    }
  }
}
