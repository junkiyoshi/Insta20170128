import java.util.*;

ArrayList<Particle> particles;

void setup()
{
  size(512, 512, P3D);
  frameRate(30);
  colorMode(HSB);
  particles = new ArrayList<Particle>();
}

void draw()
{
  background(0);
   
  translate(width / 2, height / 2, -width / 2);
  rotateX(radians(90));
  
  if(frameCount % 1 == 0)
  {
    particles.add(new Particle());
  }
  
  Iterator<Particle> it = particles.iterator();
  while(it.hasNext())
  {
    Particle p = it.next();
    p.run();
  }
  
  saveFrame("screen-#####.png");
  if(frameCount > 3600)
  {
     exit();
  }
}