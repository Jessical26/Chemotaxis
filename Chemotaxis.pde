 //declare bacteria variables here   
 Bacteria [] colony;
 void setup()   
 {     
   //initialize bacteria variables here
   size(500,500);
   colony = new Bacteria[10];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(0);
   for (int i=0; i<colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
   }
   
  
 class Bacteria    
 {     
   int myX, myY;

   Bacteria()
   {
     myX = myY = 250;

   }

   void move()
   {
      myX = myX + (int)(Math.random()*7)-3; //Gives (-3,-2,-1,0,1,2,3,4)
      myY = myY + (int)(Math.random()*7)-3;
   }
   void show()
   {
     int R = (int)(Math.random()*250)+100;
     int G = (int)(Math.random()*150)+100;
     int B = (int)(Math.random()*150)+100;
     fill(R,G,B);
     ellipse(myX,myY,15,15);
     
     if (mouseX > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
     
     if (mouseY > myY)
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
     
     fill(255,255,0);  
     rect(mouseX,mouseY,20,20);
     
     
   }
      
 }    