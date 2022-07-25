//IMPORTED
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables 

float paperX, paperY, paperWidth, paperHeight, penDiameter;
color defaultColor = #FFFFFF, penColor;
boolean  draw=false;

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
  paperY = width*0;
  paperWidth =  width*3/4;
  paperHeight = height*4/5;
  
  penDiameter = width/100;
  
  penColor = #99F578; 
  
 //DRAWING PAPER
  rect(paperX, paperY, paperWidth, paperHeight);
  
  
} //End setup()
//
void draw() {
  
  noStroke();
  fill(penColor);
  if (draw == true && mouseX>paperX && mouseX< paperX + paperWidth && mouseY> paperY && mouseY< paperY + paperHeight ) ellipse(mouseX, mouseY, penDiameter, penDiameter);
  fill(defaultColor);
} //End draw()
//
void keyPressed() {} // End keyPressed()
//
void mousePressed() {
  if (mouseX>paperX && mouseX< paperX + paperWidth && mouseY> paperY && mouseY< paperY + paperHeight) {
    if (draw == true) {
      draw = false;
    } else {
      draw = true;
    }
    
    
  } 
  
} //End mousePressed()
//
//END MAIN
