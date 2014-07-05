class TopCar // Left to right
{
  color c;
  int xpos, ypos, xspeed, l, sprite;
  int w = 40;

  TopCar (color tempC, int yStart) 
  {
    c = tempC;

    // Lane 1
    if (yStart == 0)
    {
      l = 2*w;
      xpos = -l;
      ypos = 475 - w/2;
      xspeed = speed1;
      sprite = 3;
    } 
    else if (yStart == 1)
    {
      l = 2*w;
      xpos = -l*2 - 100;
      ypos = 475 - w/2;
      xspeed = speed1;
      sprite = 3;
    }
    // Lane 2
    else if (yStart == 2)
    {
      l = w;
      xpos = -l;
      ypos = 575 - w/2;
      xspeed = speed2;
      sprite = 1;
    } 
    else if (yStart == 3)
    {
      l = w;
      xpos = -l*2 - 250;
      ypos = 575 - w/2;
      xspeed = speed2;
      sprite = 1;
    }
    // Lane 3
    else if (yStart == 4)
    {
      l = w;
      xpos = -l;
      ypos = 675 - w/2;
      xspeed = speed3;
      sprite = 2;
    } 
  }

  void display ()
  {
    if (sprite == 1)
    {
      image(TopCar1, xpos, ypos);
    } 
    else  if (sprite == 2)
    {
      image(TopCar2, xpos, ypos);
    } 
    else if (sprite == 3)
    {
      image(TopTruck, xpos, ypos);
    }
//    noStroke ();
//    fill (c);
//    rect (xpos, ypos, l, w);
  }

  void drive ()
  {
    xpos += xspeed;
    if (xpos > width) 
    {
      xpos = -l;
    }
  }
}

class BottomCar // Right to left
{
  color c;
  int xpos, ypos, xspeed, l, sprite;
  int w = 40;

  BottomCar (color tempC, int yStart) 
  {
    c = tempC;
    
    // Lane 1
    if (yStart == 0)
    {
      l = w;
      xpos = width;
      ypos = 525 - w/2;
      xspeed = speed5;
      sprite = 1;
    }
    // Lane 2
    else if (yStart == 1)
    {
      l = 2*w;
      xpos = width;
      ypos = 625 - w/2;
      xspeed = speed1;
      sprite = 3;
    } else if (yStart == 2)
    {
      l = 2*w;
      xpos = width + l + 150;
      ypos = 625 - w/2;
      xspeed = speed1;
      sprite = 3;
    }
    // Lane 3
    else if (yStart == 3)
    {
      l = w;
      xpos = width;
      ypos = 725 - w/2;
      xspeed = speed2;
      sprite = 2;
    }
    else if (yStart == 4)
    {
      l = w;
      xpos = width + l + 250;
      ypos = 725 - w/2;
      xspeed = speed2;
      sprite = 2;
    }
  }

  void display ()
  {
    if (sprite == 1)
    {
      image(BottomCar1, xpos, ypos);
    } 
    else  if (sprite == 2)
    {
      image(BottomCar2, xpos, ypos);
    } 
    else if (sprite == 3)
    {
      image(BottomTruck, xpos, ypos);
    }
//    noStroke ();
//    fill (c);
//    rect (xpos, ypos, l, w);
  }

  void drive ()
  {
    xpos -= xspeed;
    if (xpos + l < 0) 
    {
      xpos = width;
    }
  }
}

