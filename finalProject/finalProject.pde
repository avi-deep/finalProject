//IMPORTED
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables 

float paperX, paperY, paperWidth, paperHeight, penDiameter;
float color1X, color1Y, color1Width, color1Height, color2X, color2Y, color2Width, color2Height, color3X, color3Y, color3Width, color3Height, color4X, color4Y, color4Width, color4Height, color5X, color5Y, color5Width, color5Height, color6X, color6Y, color6Width, color6Height, color7X, color7Y, color7Width, color7Height, color8X, color8Y, color8Width, color8Height, color9X, color9Y, color9Width, color9Height ;
float eraserX, eraserY, eraserWidth, eraserHeight ;
color defaultColor = #FFFFFF, penColor, color1, color2, color3, color4, color5, color6, color7, color8, color9;
color eraserFill, bgColor;
boolean  draw=false, draw1 = false;

//
void setup() {
  //CANVAS SETUP
  size(800,600);
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  
  //POPULATION
  
  
  paperX = width*0;
  paperY = height*0;
  paperWidth =  width*3/4;
  paperHeight = height*4/5;
  penDiameter = width/100;
  
  penColor = #99F578; 
  
  
  color1X = width - width/5;
  color1Y = height/10;
  color1Width = width/15;
  color1Height = height/15;
  
  color2X = width - width/7;
  color2Y = height/10;
  color2Width = width/15;
  color2Height = height/15;
  
  color3X = width - width/12;
  color3Y = height/10;
  color3Width = width/15;
  color3Height = height/15;
  
  color4X = width - width/5;
  color4Y = height/5;
  color4Width = width/15;
  color4Height = height/15;
  
  color5X = width - width/7;
  color5Y = height/5;
  color5Width = width/15;
  color5Height = height/15;

  color6X = width - width/12;
  color6Y = height/5;
  color6Width = width/15;
  color6Height = height/15;
  
  color7X = width - width/5;
  color7Y = height*3/10;
  color7Width = width/15;
  color7Height = height/15;
  
  color8X = width - width/7;
  color8Y = height*3/10;
  color8Width = width/15;
  color8Height = height/15;

  color9X = width - width/12;
  color9Y = height*3/10;
  color9Width = width/15;
  color9Height = height/15;
  
  eraserX = width/5;
  eraserY = height*4/5;
  eraserWidth = width/15;
  eraserHeight = height/15;
  
  bgColor = color( random(255), random(255), random(255) ) ;
  eraserFill = bgColor;
  
  
  
  color1 = #000000 ; 
  color2 = #F50F0F ;
  color3 =  #F50FCF;
  color4 =  #F50F55;
  color5 =  #0FC9F5;
  color6 =  #0FF52B;
  color7 =  #0FF52B;
  color8 =  #F5910F;
  //color2 =  random(50,255), random(50,250), random(50,250) ;
  //color9 = 250,55,65 ;
  
 //DRAWING PAPER
  fill(bgColor);
  rect(paperX, paperY, paperWidth, paperHeight);
  
  
} //End setup()
//
void draw() {
  
  
  //COLORS
  
  fill(color1);
  rect(color1X, color1Y, color1Width, color1Height);
  fill(color2);
  rect(color2X, color2Y, color2Width, color2Height);
  fill(color3);
  rect(color3X, color3Y, color3Width, color3Height);
  
  fill(color4);
  rect(color4X, color4Y, color4Width, color4Height);
  fill(color5);
  rect(color5X, color5Y, color5Width, color5Height);
  fill(color6);
  rect(color6X, color6Y, color6Width, color6Height);

   
  fill(color7);
  rect(color7X, color7Y, color7Width, color7Height);
  fill(color8);
  rect(color8X, color8Y, color8Width, color8Height);
  fill(color9);
  rect(color9X, color9Y, color9Width, color9Height);
  fill(defaultColor);
  
  fill(eraserFill);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  
  
  
  fill(defaultColor);
  
  //noStroke();
  stroke(penColor);
  fill(penColor);
  if (draw1 == true && mouseX>paperX && mouseX< paperX + paperWidth && mouseY> paperY && mouseY< paperY + paperHeight ) ellipse(mouseX, mouseY, penDiameter, penDiameter);
  if ( draw == true && mouseX>paperX && mouseX<paperX+paperWidth && mouseY>paperY && mouseY<paperY+paperHeight) line (mouseX, mouseY, pmouseX, pmouseY); 

  fill(defaultColor);
  stroke(defaultColor);
} //End draw()
//
void keyPressed() {} // End keyPressed()
//
void mousePressed() {
  

  bgColor = color( random(255), random(255), random(255) ) ;
  
  
  //if (mouseX>paperX && mouseX< paperX + paperWidth && mouseY> paperY && mouseY< paperY + paperHeight) {
  //  if (draw == true) {
  //    draw = false;
  //  } else {
  //    draw = true;
  //  }
  // } //END
   
    
  if (mouseX>paperX && mouseX< paperX + paperWidth && mouseY> paperY && mouseY< paperY + paperHeight) {
    if (draw1 == true) {
      draw1 = false;
    } else {
      draw1 = true;
    }
   }
   
   // CHANGING PEN COLORS
   
  if (mouseX>color1X && mouseX < color1X + color1Width && mouseY > color1Y && mouseY < color1Y + color1Height) { penColor = color1; penDiameter = width/100; }
  if (mouseX>color2X && mouseX < color2X + color2Width && mouseY > color2Y && mouseY < color2Y + color2Height) { penColor = color2; penDiameter = width/100; }
  if (mouseX>color3X && mouseX < color3X + color3Width && mouseY > color3Y && mouseY < color3Y + color3Height) { penColor = color3; penDiameter = width/100; }
  if (mouseX>color4X && mouseX < color4X + color4Width && mouseY > color4Y && mouseY < color4Y + color4Height) { penColor = color4; penDiameter = width/100; }
  if (mouseX>color5X && mouseX < color5X + color5Width && mouseY > color5Y && mouseY < color5Y + color5Height) { penColor = color5; penDiameter = width/100; }
  if (mouseX>color6X && mouseX < color6X + color6Width && mouseY > color6Y && mouseY < color6Y + color6Height) { penColor = color6; penDiameter = width/100; }
  if (mouseX>color7X && mouseX < color7X + color7Width && mouseY > color7Y && mouseY < color7Y + color7Height) { penColor = color7; penDiameter = width/100; }
  if (mouseX>color8X && mouseX < color8X + color8Width && mouseY > color8Y && mouseY < color8Y + color8Height) { penColor = color8; penDiameter = width/100; }
  if (mouseX>color9X && mouseX < color9X + color9Width && mouseY > color6Y && mouseY < color9Y + color9Height) { penColor = color9; penDiameter = width/100; }
  if (mouseX>eraserX && mouseX < eraserX + eraserWidth && mouseY > eraserY && mouseY < eraserY + eraserHeight) { 
  fill(bgColor);
  rect(paperX, paperY, paperWidth, paperHeight);
  penColor = bgColor;
    penDiameter = width/50; 
  }
  
  
  
} //End mousePressed()
//
//END MAIN
