ArrayList<Brush> brush;
Brush b;
Capture c;
int Mouse;
PImage img;
boolean Start;
boolean directions;
//add text
void setup()
{
    size (800,800);
   //fullScreen(P2D);
 
  brush = new ArrayList<Brush>();
  img = loadImage("WelcomeBackground.jpg");
}

void welcomeScreen() {
  background(img);
  textSize(64);
  fill(0);
  text("WELCOME", width/2-164, height/2);
  textSize(32);
  text("hit ENTER to PLAY", width/2-150, height/2+40);
  
}

void Play() {
 b = new Brush();

 for (int i = 0; i <brush.size();i++)
  {
    Brush b = brush.get(i);
    if((b.x <0-40) ||(b.x > width+40)) 
      {
      brush.remove(i);
      }
 if((b.y <0-40) || (b.y > height+40)) 
     {
     brush.remove(i);
     }
   
     b.update();
     b.makeShapes();
     b.changeShape();
     
  }
}

void Directions() {
   
    fill(255);
    text("drag mouse to play", width/2-150, height/2-100);
    text("hit 1 change to rect brush", width/2-200, height/2-40);
    text("hit 2 change to ellipse brush", width/2-200, height/2-10);
    text("hit F change to fill mode", width/2-200, height/2+20);
    text("hit S change to stroke mode", width/2-200, height/2+50);
    text("hit ENTER to clear background", width/2-200, height/2+80);
    
  }




void draw ()
{
 if (directions == false)
     {Directions();}

     
     
   if (Start == false) {
    welcomeScreen();}
    else if (Start == true) 
    {Play();}
     
   
      c = new Capture();
     c.captureFrames();

 
}

void mouseDragged()
{
  
  b = new Brush();

  b.setPosition(mouseX,mouseY);
  b.size = (random(10,40));
  b.setSpeed(random(-1.0f,1.0f),random(-2.0f,2.0f));
  b.setColour(color(random(50,255),random(150,200),random(230,255),random(0,100)));
  b.setStrokeColour(color(random(50,150),random(20,100),random(230,250)));
  brush.add(b);
  directions = true;
  
}

void mouseReleased()
{
  for (int i = 0; i <brush.size();i++)
  {Brush b = brush.get(i);
  if(Mouse == 0) 
    {
    brush.clear();
    }
  }
  directions = false;
}
 
 void keyPressed(){
 if (key == ENTER){Start = true; 
 background(0);}

 }
 
 /*
 void mousePressed(){
 Start = true; 
 background(0);
}
*/
  