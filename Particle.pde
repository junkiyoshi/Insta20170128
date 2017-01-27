
class Particle
{
  float angle;
  float angle_speed;
  float z;
  float z_speed;
  color bodyColor;
  
  Particle()
  {
    angle = 0;
    angle_speed = -2;
    z_speed = random(-0.25, 0.25);
    z = -height / 2;
    if(z_speed <= 0)
    {
      z *= -1;
      angle_speed *= -1;
    }
    bodyColor = color(frameCount % 255, 255, 255); 
  }
  
  void run()
  {
    update();
    display();
  }
  
  void update()
  {
    angle = (angle + angle_speed) % 360;
    z += z_speed;
  }
  
  void display()
  {
    float x = 200 * cos(radians(angle));
    float y = 200 * sin(radians(angle));
    bodyColor = color(((angle / 255) * 360 + frameCount) % 255, 255, 255); 
    pushMatrix();
    translate(x, y, z);
    noStroke();
    fill(bodyColor);
    sphere(5.0);    
    popMatrix();
  }
}