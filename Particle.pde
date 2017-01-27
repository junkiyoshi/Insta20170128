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
    z = - height / 2;
    angle_speed = random(0.5, 3);
    z_speed = random(0.5, 2);
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
    z += 0.2;
  }
  
  void display()
  {
    float x = 200 * cos(radians(angle));
    float y = 200 * sin(radians(angle));
    
    pushMatrix();
    translate(x, y, z);
    bodyColor = color((angle / 360) * 255, 255, 255);
    stroke(bodyColor);
    noFill();
    sphere(2);    
    popMatrix();
  }
}