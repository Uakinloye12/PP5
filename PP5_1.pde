class Ball
{
  PVector location, velocity;
  float radius;

  Ball(float r)
  {
 
    location = new PVector(width/5, height/5);
   
    velocity = new PVector(5, 5);
    
    radius=r;
  }

  void move()
  {
    location.add(velocity);
  }
float x = 150;
float y = 100;
float xSpeed = 5;
float ySpeed = 4;


  x += xSpeed;
  y += ySpeed;
  
  if (x < 0 || x > width) {
    xSpeed *= -1;
  }

  if (y < 0  || y > height) {
    ySpeed *= -1;
  }
}
  if (x < 0 || x > width) {
    xSpeed *= -1;
  }

  if (y < 0  || y > height) {
    ySpeed *= -1;
  }
}
  void bounce()
 {
  
    if ((location.x > width) || (location.x < 0))
      velocity.x *= -1;

    if ((location.y > height) || (location.y < 0))
      velocity.y *= -1;
  }

  void display()
  {
    noStroke();
    fill(255);
    ellipse(location.x, location.y, radius * 5, radius * 5);
  }

  void checkCollision()
  {

    PVector distanceVect = PVector.sub(location, location);


    float distanceVectMag = distanceVect.mag();


    float minDistance = radius + radius * 5;
  }
}
