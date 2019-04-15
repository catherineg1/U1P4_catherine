PImage Martian;
float MartianX= 400;
float MartianY = 400;

PImage star;
float starX = 800;
float starY = 0;

PImage mars;
PImage ufo;
float ufoX= -200;
float ufoY=50;

int Speed= 200;


Martian firstMartian = new Martian();
Martian secondMartian = new Martian();
Martian thirdMartian = new Martian();


void setup()
{
  size(800, 800);

  star = loadImage("star.png");
  star.resize(100, 100);
  ufo = loadImage("ufo.png");
  ufo.resize(300, 200);
  mars= loadImage("mars.jpg");
  Martian = loadImage("martian.png");

  text(" ", 100, 100);
}

void draw()
{
  background(mars);

  image(Martian, MartianX, MartianY);

  image(ufo, ufoX, ufoY);
  ufoX= ufoX + 2;

  if (ufoX > 800)
  {
    ufoX= 0;
  }


  image(star, starX, starY);
  starX = starX - 13;
  starY = starY + 10;

  firstMartian.draw();
  secondMartian.draw();
  thirdMartian.draw();


  if (keyPressed)
  {
    if (key == ' ')
    {
      firstMartian.Welcome();
    }

    if (key == 'a')
    {
      firstMartian.X -= 4;
    }

    if (key == 'd')
    {
      firstMartian.X += 4;
    }

    if (key == 's')
    {
      firstMartian.Y += 4;
    }

    if (key== 'w')
    {
      firstMartian.Y -= 4;
    }
  }
}
