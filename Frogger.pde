// Number of objects
int numTopCar = 5;
int numBottomCar = 5;
int numLog = 6;
int numTurtle = 10;

// Speeds
int speed1 = 2;
int speed2 = 3;
int speed3 = 4;
int speed4 = 5;
int speed5 = 6;

// Number of starting lives
int lives = 3;

// Font
PFont f;

// Objects
Frog frog;
TopCar [] tcar = new TopCar [numTopCar];
BottomCar [] bcar = new BottomCar [numBottomCar];
Log [] log = new Log [numLog];
Turtle [] turtle = new Turtle [numTurtle];

// Homes
boolean home1 = false; // 50, 75
boolean home2 = false; // 150, 75
boolean home3 = false; // 250, 75
boolean home4 = false; // 350, 75
boolean home5 = false; // 450, 75

// Drift
boolean rdrift = false;
boolean ldrift = false;

// Sprites
PImage TopCar1, TopCar2, BottomCar1, BottomCar2, TopTruck, BottomTruck;
PImage TurtleFull, TurtleHalf, TurtlePart;
PImage LogBig, LogMed, LogSmall;
PImage Frog;



void setup ()
{
  size (500, 850);
  frameRate(30);

  f = createFont ("georgia", 30);
  textFont(f);
  
  TopCar1 = loadImage("Sprite_TopCar1.png");
  TopCar2 = loadImage("Sprite_TopCar2.png");
  BottomCar1 = loadImage("Sprite_BottomCar1.png");
  BottomCar2 = loadImage("Sprite_BottomCar2.png");
  TopTruck = loadImage("Sprite_TopTruck.png");
  BottomTruck = loadImage("Sprite_BottomTruck.png");
  TurtleFull = loadImage("Sprite_Turtle_Full.png");
  TurtleHalf = loadImage("Sprite_Turtle_Half.png");
  TurtlePart = loadImage("Sprite_Turtle_Partial.png");
  LogBig = loadImage("Sprite_Log_180x20.png");
  LogMed = loadImage("Sprite_Log_116x20.png");
  LogSmall = loadImage("Sprite_Log_84x20.png");
  Frog = loadImage("Sprite_Frog.png");

  level1();

  for (int i = 0; i < numTopCar; i++)
  {
    tcar[i] = new TopCar (color(random(255), random(255), random(255)), i);
  }

  for (int i = 0; i < numBottomCar; i++)
  {
    bcar[i] = new BottomCar (color(random(255), random(255), random(255)), i);
  }

  for (int i = 0; i < numLog; i++)
  {
    log[i] = new Log (i);
  }

  for (int i = 0; i < numTurtle; i++)
  {
    turtle[i] = new Turtle (i);
  }

  frog = new Frog (true);
}




void draw ()
{
  level1();

  for (int i = 0; i < numTopCar; i++)
  {
    tcar[i].display();
    tcar[i].drive();
  }

  for (int i = 0; i < numBottomCar; i++)
  {
    bcar[i].display();
    bcar[i].drive();
  }

  for (int i = 0; i < numLog; i++)
  {
    log[i].display();
    log[i].move();
  }

  for (int i = 0; i < numTurtle; i++)
  {
    turtle[i].move();
    turtle[i].submerge();
    turtle[i].display();
  }

  frog.display();
  
  home();
  lives();

  // River Drift
  if (rdrift == true) // Log drift
  {
    if (frog.y == 125 - frog.l/2)
    {
      frog.x += speed3;
    } else if (frog.y == 225 - frog.l/2)
    {
      frog.x += speed2;
    } else if (frog.y == 325 - frog.l/2)
    {
      frog.x += speed1;
    }
  } else if (ldrift == true) // Turtle drift
  {
    if (frog.y == 175 - frog.l/2)
    {
      frog.x -= speed2;
    } else if (frog.y == 275 - frog.l/2)
    {
      frog.x -= speed1;
    } else if (frog.y == 375 - frog.l/2)
    {
      frog.x -= speed2;
    }
  }

  //println (frog.on, home1, home2, home3, home4, home5);
  //println (frog.x, frog.y);
}
