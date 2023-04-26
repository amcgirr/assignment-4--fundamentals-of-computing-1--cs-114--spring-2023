import java.util.random

Cell[][] board = new Cell[3][3];

//create cell class
class Cell {
    float x;
    float y;
    float w;
    float h;
    int state;
    Cell (float _x, float _y, float _w, float _h) {
      x= _x;
      y= _y;
      w= _w;
      h= _h;
    }
    void display() {
      fill(200);
      rect(x,y,w,h);
      if(state == 1) {
        //draw circle
        fill(255);
        ellipse(x+w/2, y+h/2,160,160);
      } else if(state == 2){
        //draw x
        vertex(x,y);
        vertex(x+w,y+h);
        vertex(x+w,y);
        vertex(x,y+h);
      }
    }
}

void cpuTurn() {
  Random generator = new Random();
  int input = generator.nextInt(8);
  playTurn(input);
}

void keyPressed() {
  playTurn(key);
}

void playTurn(input) {
    switch(input) {
      case '0':
        board[0][0].state = 1;
        break;
      case '1':
        board[1][0].state = 1;
        break;
      case '2':
        board[2][0].state = 1;
        break;
      case '3':
        board[0][1].state = 1;
        break;
      case '4':
        board[1][1].state = 1;
        break;
      case '5':
        board[2][1].state = 1;
        break;
      case '6':
        board[0][2].state = 1;
        break;
      case '7':
        board[1][2].state = 1;
        break;
      case '8':
        board[2][2].state = 1;
        break;
      default:
        break;
    }
}

void checkWin() {
  //player win
  //horizontal win
  if(board[0][0].state == 1&&board[1][0].state == 1&&board[2][0].state == 1){
    win = 1;
  }else if(board[0][1].state == 1&&board[1][1].state == 1&&board[2][1].state == 1){
    win = 1;
  }else if(board[0][2].state == 1&&board[1][2].state == 1&&board[2][2].state == 1){
    win = 1;
  }
  //vertical win
  if(board[0][0].state == 1&&board[0][1].state == 1&&board[0][2].state == 1){
    win = 1;
  }else if(board[1][0].state == 1&&board[1][1].state == 1&&board[1][2].state == 1){
    win = 1;
  }else if(board[2][0].state == 1&&board[2][1].state == 1&&board[2][2].state == 1){
    win = 1;
  }
  //diagonal win
  if(board[0][0].state == 1&&board[1][1].state == 1&&board[2][2].state == 1){
    win = 1;
  }else if(board[2][0].state ==  1&&board[1][1].state == 1&&board[0][2].state == 1) {
    win = 1;
  }
  //cpu win
  //horizontal win
  else if(board[0][0].state == 2&&board[1][0].state == 2&&board[2][0].state == 2){
    win = 2;
  }else if(board[0][1].state == 2&&board[1][1].state == 2&&board[2][1].state == 2){
    win = 2;
  }else if(board[0][2].state == 2&&board[1][2].state == 2&&board[2][2].state == 2){
    win = 2;
  }
  //vertical win
  else if(board[0][0].state == 2&&board[0][1].state == 2&&board[0][2].state == 2){
    win = 2;
  }else if(board[1][0].state == 2&&board[1][1].state == 2&&board[1][2].state == 2){
    win = 1;
  }else if(board[2][0].state == 2&&board[2][1].state == 2&&board[2][2].state == 2){
    win = 2;
  }
  //diagonal win
  else if(board[0][0].state ==  2&&board[1][1].state == 2&&board[2][2].state == 2){
    win = 2;
  }else if(board[2][0].state ==  2&&board[1][1].state == 2&&board[0][2].state == 2) {
    win = 2;
  }
  //1 is player win
  //2 is cpu win
}
  
  
