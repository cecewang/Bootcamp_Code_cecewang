class Ball{
  
  float x;
  float y;
  float altitude;
  float velocity = 0;
  float gravity = 1;

  Ball(float x, float y, float altitude){
    this.x = x;
    this.y = y;
    this.altitude = altitude;
    noStroke();
    fill(255);
  }
    
  void bounce(){
    
      ellipse(x, y, 30, 30);
      if (y <= y && y >= altitude){
        y -= velocity;
        velocity += gravity * 0.1;
      }
      else if (y < altitude){
        velocity *= -1;
        y -= velocity;
        velocity += gravity * 0.1;
      } 
      }
    } 