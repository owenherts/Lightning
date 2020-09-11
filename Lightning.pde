int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
   String title = "Lightning Orb";

void setup()
{
  size(300,300);
  strokeWeight((int)Math.floor(Math.random() * 5));
  background(25, 25, 25);
  text(title, 100, 20);
}
void draw()
{
  ellipse(0, 150, 75, 75);
  stroke((int)Math.floor(Math.random() * 1000), (int)Math.floor(Math.random() * 1000), (int)Math.floor(Math.random() * 100));
  while(endX<300){
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 19)-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight((int)Math.floor(Math.random() * 5));
}
