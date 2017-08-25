class Brush
{
float x;
float y;
float speedx;
float speedy;
float size;
color c;
color s;
PShape[] shapes;
PImage img;
int ShapesIndex = 0;
  void setPosition (float _x,float _y){
    x = _x;
    y = _y;
  }
  
  void setSpeed (float _x, float _y){
    speedx = _x;
    speedy = _y;
  }
  
  void setColour(color _c){
     c = _c;
  }
  
  void setStrokeColour(color _s){
     s = _s;
  }
  
  void update(){
    x = x + speedx;
    y = y + speedy;
  }
  
  

  void makeShapes(){
    
    shapes = new PShape [2];
    shapes[0] =  createShape(RECT,x,y,size,size);
    shapes[1] = createShape(ELLIPSE,x,y,size,size);

  fill(c); noStroke();

       
         if (key == 's') {fill(0); stroke(s);}
      if (key == 'f') {fill(c); noStroke();}
  }
      
     
      void changeShape(){
        
         if (key == '1') ShapesIndex = 0;

      if(key == '2') ShapesIndex = 1;
       
          shape(shapes[ShapesIndex]);
      }


}