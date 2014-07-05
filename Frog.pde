class Frog 
{
  int x, y;
  int l = 32;
  boolean on;

  Frog (boolean onin)
  {
    x = width/2 - l/2;
    y = 775 - l/2;
    on = onin;
  }

  void display ()
  {
    if (on == true)
    {
      image(Frog, x, y);
//      noStroke();
//      fill (0, 255, 0);
//      ellipse (x, y, 20, 20);
    } else if (on == false) 
    {
      noStroke();
      noFill();
      ellipse (x, y, 20, 20);
    }
    
    if (y < 125)
    {
      noStroke();
      noFill();
      ellipse (x, y, 20, 20);
    }
  }
}

