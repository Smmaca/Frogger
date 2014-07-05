void keyPressed()
{
  if (frog.on == true)
  {
    if (key == 119) //w
    {
      frog.y -= 50;
    } else if (key == 115) //s
    {
      frog.y += 50;
    } else if (key == 97) //a
    {
      frog.x -= 25;
    } else if (key == 100) //d
    {
      frog.x += 25;
    }
  } else if (frog.on == false)
  {
    if (key == 119) //w
    {
      frog.y -= 0;
    } else if (key == 115) //s
    {
      frog.y += 0;
    } else if (key == 97) //a
    {
      frog.x -= 0;
    } else if (key == 100) //d
    {
      frog.x += 0;
    }
  }

  // Top and bottom limits
  if (frog.y > 775 - frog.l/2)
  {
    frog.y = 775 - frog.l/2;
  } else if (frog.y < 75 - frog.l/2)
  {
    frog.y = 75 - frog.l/2;
  }

  // Left and right limits
  if (frog.x > 475 - frog.l/2)
  {
    frog.x = 475 - frog.l/2;
  } else if (frog.x < 25 - frog.l/2)
  {
    frog.x = 25 - frog.l/2;
  }
  
  // Home border limits
  if (frog.y < 125 - frog.l/2) 
  {
    if (frog.x <= 35 - frog.l/2)
    {
      frog.y = 125 - frog.l/2;
    }
    if ((frog.x >= 65 - frog.l/2) && (frog.x <= 135 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
    if ((frog.x >= 165 - frog.l/2) && (frog.x <= 235 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
    if ((frog.x >= 265 - frog.l/2) && (frog.x <= 335 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
    if ((frog.x >= 365 - frog.l/2) && (frog.x <= 435 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
    if (frog.x >= 465 - frog.l/2)
    {
      frog.y = 125 - frog.l/2;
    }
  }

  // Full home limits
  if (home1 == true)
  {
    if ((frog.y < 125 - frog.l/2) && (frog.x > 25 - frog.l/2) && (frog.x < 75 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
  }
  if (home2 == true)
  {
    if ((frog.y < 125 - frog.l/2) && (frog.x > 125 - frog.l/2) && (frog.x < 175 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
  }
  if (home3 == true)
  {
    if ((frog.y < 125 - frog.l/2) && (frog.x > 225 - frog.l/2) && (frog.x < 275 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
  }
  if (home4 == true)
  {
    if ((frog.y < 125 - frog.l/2) && (frog.x > 325 - frog.l/2) && (frog.x < 375 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
  }
  if (home5 == true)
  {
    if ((frog.y < 125 - frog.l/2) && (frog.x > 425 - frog.l/2) && (frog.x < 475 - frog.l/2))
    {
      frog.y = 125 - frog.l/2;
    }
  }

  // River Current
  if ((frog.y == 125 - frog.l/2) || (frog.y == 225 - frog.l/2) || (frog.y == 325 - frog.l/2))
  {
    rdrift = true;
  } else
  {
    rdrift = false;
  }
  if ((frog.y == 175 - frog.l/2) || (frog.y == 275 - frog.l/2) || (frog.y == 375 - frog.l/2))
  {
    ldrift = true;
  } else
  {
    ldrift = false;
  }
}

