class Turtle
{
  int xpos, ypos, xspeed;
  int l = 30;
  boolean triplet; // true = triplet and false = pair
  int t; // Time delay for submerging
  int s = 0; // Submerged state
  int j = 60; // time interval between submerging

  Turtle (int yStart)
  {
    // Lane 1
    if (yStart == 0)
    {
      triplet = false;
      xpos = width + l/2 + 200;
      ypos = 175 - l/2;
      xspeed = speed2;
      t = j/2;
    } 
    else if (yStart == 1)
    {
      triplet = false;
      xpos = width + l/2 + (l*2 + 10) + 100 + 200;
      ypos = 175 - l/2;
      xspeed = speed2;
      t = j/2;
    }
    else if (yStart == 2)
    {
      triplet = false;
      xpos = width + l/2 + (l*2 + 10)*2 + 200 + 200;
      ypos = 175 - l/2;
      xspeed = speed2;
      t = j/2;
    }
    // Lane 2
    else if (yStart == 3)
    {
      triplet = true;
      xpos = width + l/2;
      ypos = 275 - l/2;
      xspeed = speed1;
      t = 0;
    } 
    else if (yStart == 4)
    {
      triplet = true;
      xpos = width + l/2 + (3*l + 20) + 100;
      ypos = 275 - l/2;
      xspeed = speed1;
      t = 0;
    }
    else if (yStart == 5)
    {
      triplet = true;
      xpos = width + l/2 + (3*l + 20)*2 + 200;
      ypos = 275 - l/2;
      xspeed = speed1;
      t = 0;
    }
    // Lane 3
    else if (yStart == 6)
    {
      triplet = false;
      xpos = width + l/2 + 100;
      ypos = 375 - l/2;
      xspeed = speed2;
      t = j + j/2;
    } 
    else if (yStart == 7)
    {
      triplet = false;
      xpos = width + l/2 + (l*2 + 10) + 75 + 100;
      ypos = 375 - l/2;
      xspeed = speed2;
      t = j + j/2;
    }
    else if (yStart == 8)
    {
      triplet = false;
      xpos = width + l/2 + (l*2 + 10)*2 + 150 + 100;
      ypos = 375 - l/2;
      xspeed = speed2;
      t = j + j/2;
    } 
    else if (yStart == 9)
    {
      triplet = false;
      xpos = width + l/2 + (l*2 + 10)*3 + 225 + 100;
      ypos = 375 - l/2;
      xspeed = speed2;
      t = j + j/2;
    }
  }

  void move ()
  {
    xpos -= xspeed;
    if (xpos + (3*l + 20) < 0) 
    {
      xpos = width + l/2;
    }
  }
  
  void submerge ()
  {
    int f = (int)frameCount;
    int b = f - t;
    int g = b % j;
    
    if ((g == 0) && (b > 0))
    {
      if (s < 6)
      {
        s++;
      } else if (s == 6)
      {
        s = 0;
      }
    }
    
    println (f);
  }
  
  void display ()
  {
    noStroke ();
    
    if (triplet == true)
    {
      if ((s == 0) || (s == 6))
      {
        image(TurtleFull, xpos, ypos);
        image(TurtleFull, xpos + 40, ypos);
        image(TurtleFull, xpos + 80, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos, l, l);
//        ellipse (xpos + 40, ypos, l, l);
//        ellipse (xpos + 80, ypos, l, l);
      }
      else if ((s == 1) || (s == 5))
      {
        image(TurtleHalf, xpos, ypos);
        image(TurtleHalf, xpos + 40, ypos);
        image(TurtleHalf, xpos + 80, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos + l/2, l - 10, l - 10);
//        ellipse (xpos + 40, ypos + l/2, l - 10, l - 10);
//        ellipse (xpos + 80, ypos + l/2, l - 10, l - 10);
      }
      else if ((s == 2) || (s == 4))
      {
        image(TurtlePart, xpos, ypos);
        image(TurtlePart, xpos + 40, ypos);
        image(TurtlePart, xpos + 80, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos + l/2, l - 20, l - 20);
//        ellipse (xpos + 40, ypos + l/2, l - 20, l - 20);
//        ellipse (xpos + 80, ypos + l/2, l - 20, l - 20);
      }
      else if (s == 3)
      {
        noFill();
        ellipse (xpos, ypos + l/2, l, l);
        ellipse (xpos + 40, ypos + l/2, l, l);
        ellipse (xpos + 80, ypos + l/2, l, l);
      }
    } else
    {
      if ((s == 0) || (s == 6))
      {
        image(TurtleFull, xpos, ypos);
        image(TurtleFull, xpos + 40, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos + l/2, l, l);
//        ellipse (xpos + 40, ypos + l/2, l, l);
      }
      else if ((s == 1) || (s == 5))
      {
        image(TurtleHalf, xpos, ypos);
        image(TurtleHalf, xpos + 40, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos + l/2, l - 10, l - 10);
//        ellipse (xpos + 40, ypos + l/2, l - 10, l - 10);
      }
      else if ((s == 2) || (s == 4))
      {
        image(TurtlePart, xpos, ypos);
        image(TurtlePart, xpos + 40, ypos);
//        fill (196, 2, 2);
//        ellipse (xpos, ypos + l/2, l - 20, l - 20);
//        ellipse (xpos + 40, ypos + l/2, l - 20, l - 20);
      }
      else if (s == 3)
      {
        noFill ();
        ellipse (xpos, ypos + l/2, l, l);
        ellipse (xpos + 40, ypos + l/2, l, l);
      }
    }
  }
}

