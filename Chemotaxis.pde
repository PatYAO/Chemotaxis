 //declare bacteria variables here  
 Bacteria [] bob;
 void setup()   
 { 
   size(500,500);
   bob = new Bacteria[500];
   for(int i = 0; i < bob.length; i++){
   bob[i] = new Bacteria();
   }
   //initialize bacteria variables here
   
 }   
 void draw()   
 {    
   //move and show the bacteria 
   background(0);
   for(int i = 0; i < bob.length;i++){
     bob[i].walk();
     bob[i].show();
 }
 }
 class Bacteria    
 {     
   //lots of java!
   int myX, myY;
   boolean brain;
   Bacteria(){
     myX = 250;
     myY = 250;
     brain = true;
   }
   void walk(){
     if (brain == true){
     if (myX > mouseX){
     myX = myX + (int)(Math.random()*7)-5;
     }
     else{
        myX = myX + (int)(Math.random()*7)-1;
     }
     if(myY > mouseY){
       myY = myY + (int)(Math.random()*7)-5;
     }
     else{
        myY = myY + (int)(Math.random()*7)-1;
     }
     }
     else {
       myX= myX + (int)(Math.random()*7)-3;
       myY= myY + (int)(Math.random()*7)-3;
     }
      if(mousePressed == true && mouseButton == LEFT){
        for(int i = 0; i< bob.length; i++){
          bob[i].myX = (int)(Math.random() * 500);
          bob[i].myY = (int)(Math.random() * 500);
          
        }
      }
      if(mousePressed == true && mouseButton == RIGHT){
        if(brain == true){
          brain = false;
        }
        else if(brain == false){
          brain = true;
        }
      }
        

 }
   void show(){
     fill(0,255,0);
     ellipse(myX,myY,10,10);
 }
 }
