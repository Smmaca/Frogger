int time = -300;
boolean timeout = false;
boolean timereset = false;

void timer ()
{
  textAlign (RIGHT);
  fill (255, 255, 0);
  text ("TIME", width, height);
  
  fill (0, 255, 0);
  rect (width - 85, 829, time, 21);
  
  if (time < 0)
  {
    int f = frameCount;
    int b = f%5;
    if (b == 0)
    {
      time++;
    }
  } else if (time == 0)
  {
    timeout = true;
  }
  
  if (timereset == true)
  {
    time = -300;
    timereset = false;
  }
  
  //println(time, timeout, timereset);
  println(time);
}
