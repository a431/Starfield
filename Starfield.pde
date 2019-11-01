Particle [] stars;
OddballParticle oddball;
boolean starsStop = false;
void setup()
{
  size(500,500);
  stars = new Particle[200];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Particle();
    stars[0] = new OddballParticle();
  }
  
}
void draw()
{
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
    stars[i].move();
    if (stars[i].myX > 500) {
      stars[i].myX = Math.random()*500;
      stars[i].myY = Math.random() * 500;
      stars[i].myAngle = Math.random() * 2 * Math.PI;
      stars[i].myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      stars[i].mySpeed = Math.random()*10+3;
    } else if (stars[i].myX < 0) {
      stars[i].myX = Math.random()*500;
      stars[i].myY = Math.random() * 500;
      stars[i].myAngle = Math.random() * 2 * Math.PI;
      stars[i].myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      stars[i].mySpeed = Math.random()*10+3;
    } else if (stars[i].myY > 500) {
      stars[i].myX = Math.random()*500;
      stars[i].myY = Math.random() * 500;
      stars[i].myAngle = Math.random() * 2 * Math.PI;
      stars[i].myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      stars[i].mySpeed = Math.random()*10+3;
    } else if (stars[i].myY < 0) {
      stars[i].myX = Math.random()*500;
      stars[i].myY = Math.random() * 500;
      stars[i].myAngle = Math.random() * 2 * Math.PI;
      stars[i].myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      stars[i].mySpeed = Math.random()*10+3;
    }
  }
}

void mousePressed() {
  
  starsStop = ! starsStop;
  if (starsStop == false) {
    loop();
  } else {
    noLoop();
  }
  
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myX = Math.random() * 500;
    myY = Math.random() * 500;
    mySpeed = Math.random() * 6+3;
    myAngle = Math.random() * 2 * Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   
} void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  } void show() {
    fill(myColor);
    ellipse((float)myX,(float)myY,(float)Math.random()*20, (float) Math.random()*20);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
    OddballParticle() {
   
  }
  void show() {
    fill(myColor);
    triangle((float)myX+20, (float)myY+20, (float)myX,(float)myY-20, (float) myX-20, (float)myY+20);
  }
}



