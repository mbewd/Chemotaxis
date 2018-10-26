Walker[]hi;
Walker hello;
int x=350;
int y =200;
void setup()
{
  size(700,700);
  hello = new Walker();
  hi = new Walker[100];
  for(int y=0; y< hi.length; y++)
  {
    hi[y]= new Walker();}
}
void draw()
{
  background(0);
      hello.man();
      hello.manmove();
  for(int y = 9; y < hi.length; y++) {

    hi[y].walk();
    hi[y].show();
  }
}
class Walker
{
  int thex, they,manx,many,blue, red,green;
  Walker()
  {
    thex = (int)(Math.random()*700);
    they= (int)(Math.random()*700);
    manx = (int)(Math.random()*700);
    many = (int)(Math.random()*700);
    blue = (int)(Math.random()*250+6);
    red = (int)(Math.random()*250+6);
    green = (int)(Math.random()*250+6);;
  }
  
  void walk()
  {
  frameRate(120);
  if(mouseX > thex)
  thex = thex + (int)(Math.random()*7)-1;
  else
  thex = thex + (int)(Math.random()*7)-5;
  if (mouseY > they)
  they = they + (int)(Math.random()*7)-1;
  else
  they = they + (int)(Math.random()*7)-5;
  }
  
  void man()
  {
    noStroke();
    fill(0,0,255);
    ellipse(manx,many,50,50);
    ellipse(manx,many+40,70,100);}
  void manmove()
  {
   if(mouseX > manx)
  manx = manx + (int)(Math.random()*7)-1;
  else
  manx = manx + (int)(Math.random()*7)-5;
  if (mouseY > many)
  many = many + (int)(Math.random()*7)-1;
  else
  many = many + (int)(Math.random()*7)-5;}
    
  void show()
  {
    stroke(255,255,255);
    fill(red,green,blue);
    ellipse(thex,they,50,50);
  }
  
  void direct()
  {
  int direction = (int)(Math.random()*4);
  if(direction == 0)
  {
    thex += 20;
  }
  else if(direction ==1)
  {
    they -= 20;}
    else if(direction == 2)
    {
      thex -= 20;
    }
   else
   {
     they += 20;
   }

}}
