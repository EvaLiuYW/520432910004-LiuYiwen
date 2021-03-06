class Mover { 
  PVector location; 
  PVector velocity; 
  PVector acceleration; 
  float topSpeed, sz, d=0; 
  float alpha;

  Mover() { 
    sz = 5; 
    location = new PVector(random(0,width), random(0,height)); 
    velocity = new PVector(0, 0);
    topSpeed = 2; 
  } 


  void run() { 
    initiate(); 
    checkEdges(); 
    display(); 
  } 


  void initiate() { 
    PVector mouse = new PVector(mouseX, mouseY); 
    PVector dir = PVector.sub(location,mouse); 
    dir.normalize(); //取方向
    float distance = mouse.dist(location); //取模

    if (distance<150) { 
      d = map(distance, 0, 150, 0.1, 0.001); //映射为力的大小
    } else if (distance>100) { 
      d = 0; 
      velocity.mult(0.99); //能量消耗
    } 

    dir.mult(d); 
    acceleration = dir; 
    velocity.add(acceleration); //加速度
    velocity.limit(topSpeed); 
    location.add(velocity); //速度
    
    alpha=map(distance,0,200,100,0);
  } 

  void display() { 
    fill(0,alpha); 
    noStroke(); 
    ellipse(location.x, location.y, sz, sz); 
  } 

  void checkEdges() { 
    if (location.x<sz/2 || location.x > width-sz/2) { 
      velocity.x = -velocity.x; 
      acceleration.x = -acceleration.x; 
    } 

    if (location.y<sz/2 || location.y>height-sz/2) { 
      velocity.y = -velocity.y; 
      acceleration.y = -acceleration.y; 
    } 
  } 
} 
