void home ()
{
  // Void Home
  if (frog.y == 75 - frog.l/2)
  {
    if ((frog.x > 25 - frog.l/2) && (frog.x < 75 - frog.l/2)) 
    {
      home1 = true;
      if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      } else
      {
        frog.x = width/2 - frog.l/2;
        frog.y = 775 - frog.l/2;
      }
    } else if ((frog.x > 125 - frog.l/2) && (frog.x < 175 - frog.l/2))
    {
      home2 = true;
      if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      } else
      {
        frog.x = width/2 - frog.l/2;
        frog.y = 775 - frog.l/2;
      }
    } else if ((frog.x > 225 - frog.l/2) && (frog.x < 275 - frog.l/2))
    {
      home3 = true;
      if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      } else
      {
        frog.x = width/2 - frog.l/2;
        frog.y = 775 - frog.l/2;
      }
    } else if ((frog.x > 325 - frog.l/2) && (frog.x < 375 - frog.l/2))
    {
      home4 = true;
      if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      } else
      {
        frog.x = width/2 - frog.l/2;
        frog.y = 775 - frog.l/2;
      }
    } else if ((frog.x > 425 - frog.l/2) && (frog.x < 475 - frog.l/2))
    {
      home5 = true;
      if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      } else
      {
        frog.x = width/2 - frog.l/2;
        frog.y = 775 - frog.l/2;
      }
    }
  }

  if (home1 == true) 
  {
    image(Frog, 50 - frog.l/2, 75 - frog.l/2);
//    noStroke();
//    fill (0, 255, 0);
//    ellipse (50, 75, 20, 20);
  } 
  if (home2 == true)
  {
    image(Frog, 150 - frog.l/2, 75 - frog.l/2);
//    noStroke();
//    fill (0, 255, 0);
//    ellipse (150, 75, 20, 20);
  } 
  if (home3 == true)
  {
    image(Frog, 250 - frog.l/2, 75 - frog.l/2);
//    noStroke();
//    fill (0, 255, 0);
//    ellipse (250, 75, 20, 20);
  } 
  if (home4 == true)
  {
    image(Frog, 350 - frog.l/2, 75 - frog.l/2);
//    noStroke();
//    fill (0, 255, 0);
//    ellipse (350, 75, 20, 20);
  } 
  if (home5 == true)
  {
    image(Frog, 450 - frog.l/2, 75 - frog.l/2);
//    noStroke();
//    fill (0, 255, 0);
//    ellipse (450, 75, 20, 20);
  }
  
   if ((home1 == true) && (home2 == true) && (home3 == true) && (home4 == true) && (home5 == true))
      {
        frog.on = false;
        textAlign(CENTER);
        fill (0);
        text("You Win!", width/2, 435);
      }
}

