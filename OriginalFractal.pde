public void setup(){
  size(800,800);
}
void draw(){
  //background(200,200,200);
  noStroke();
  for(int i = 50; i < 255; i++){
    fill(i,i,i);
    ellipse(-30,-30,10*(300-i),10*(300-i));
  }
  stroke(150,0,0);
  tree(400, 790, 90, 110);
}
public void tree(int x, int y, float angle, double len)
{
  int x2 = x - (int)(cos(radians(angle)) * len);
  int y2 = y - (int)(sin(radians(angle)) * len);
  strokeWeight(2);
  line(x, y, x2, y2);

  if(len > 20)
  {
      stroke(255-x/3,0,0);
    tree(x2, y2, angle+35, len-12);
    tree(x2, y2, angle-25, len-12);
  }
}
