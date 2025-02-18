public void setup(){
  size(500,500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  myFractal(width/2,height/2, 480, 480);
}
public void myFractal(int x, int y, int size, int depth){
  if(size < 5){
    return;
  }
      fill(random(255),random(255), random(255), 150);
      stroke(0);
      ellipse(x, y, size, size);
      int newSize = size/2;
      myFractal(x - newSize, y - newSize, size/2, depth + 1);
      myFractal(x - newSize, y - newSize, size/2, depth + 1);
      myFractal(x + newSize, y + newSize, size/2, depth + 1);
      myFractal(x + newSize, y + newSize, size/2, depth + 1);
    
  }
public void mouseClicked(){
  redraw();
}
