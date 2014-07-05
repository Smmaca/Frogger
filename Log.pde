class Log 
{
  int xpos, ypos, xspeed, l, sprite;
  int w = 20;
  
  Log (int start) 
  {
    // ypos: 125, 225, 325
    
    // Lane 1
    if (start == 0)
    {
      l = 116;
      xpos = -l - 50;
      ypos = 125 - w/2;
      xspeed = speed3;
      sprite = 2;
    } else if (start == 1)
    {
      l = 116;
      xpos = -l*3 - 20 - 50 - 34;
      ypos = 125 - w/2;
      xspeed = speed3;
      sprite = 2;
    } 
    // Lane 2
    else if (start == 2)
    {
      l = 180;
      xpos = -l - 120;
      ypos = 225 - w/2;
      xspeed = speed2;
      sprite = 1;
    } else if (start == 3)
    {
      l = 180;
      xpos = -l*2 - 100 - 120 - 20;
      ypos = 225 - w/2;
      xspeed = speed2;
      sprite = 1;
    } 
    //Lane 3
    else if (start == 4)
    {
      l = 84;
      xpos = -l;
      ypos = 325 - w/2;
      xspeed = speed1;
      sprite = 3;
    } else if (start == 5)
    {
      l = 84;
      xpos = -l*2 - 200 - 16;
      ypos = 325 - w/2;
      xspeed = speed1;
      sprite = 3;
    } 
  }

  void display ()
  {
    if (sprite == 1)
    {
      image(LogBig, xpos, ypos);
    }
    else if (sprite == 2)
    {
      image(LogMed, xpos, ypos);
    }
    else if (sprite == 3)
    {
      image(LogSmall, xpos, ypos);
    }
//    noStroke ();
//    fill (129, 95, 1);
//    rect (xpos, ypos, l, w);
  }

  void move ()
  {
    xpos += xspeed;
    if (xpos > width) 
    {
      xpos = -l;
    }
  }
}
