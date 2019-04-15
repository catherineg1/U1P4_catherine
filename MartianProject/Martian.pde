class Martian
{
  //Member Data
  float X;
  float Y;
  float Speed;

  //Constructors
  Martian()
  {
    X = random(0, 700);
    Y = random(300, 500);
    Speed= 3;
  }

  void Welcome()
  {
    textSize(30);
    fill(0, 255, 0);
   text("WElComE hOMe My GrEeN FRiEnDs ", X-175, Y-10);
  }

  void draw()
  {
    image(Martian, X, Y);
  }
}
