void lives ()
{
  for (int i = 0; i < lives; i++)
  {
    image(Frog, (i*32)+1, 0);
//    noStroke();
//    fill (255, 0, 0);
//    ellipse ((i+1)*30, 25, 20, 20);
  }
}
