
float random1 = random(10); // random nr btw 0 and 10 (float) --> no white or yellow
int r1 = int(random1);      // converts float to int to use for color picking from array
                            
float random2 = random(12);
int r2 = int(random2);

float random3 = random(12);
int r3 = int(random3);

float random4 = random(12);
int r4 = int(random4);

float random5 = random(255);
int r5 = int(random5); // random nr btw 0 and 255 for greyscale value / opacity of the colors

float random6 = random(255);
int r6 = int(random6);

float random7 = random(255);
int r7 = int(random7);

float random8 = random(255); 
int r8 = int(random8);

// available riso ink colors at ON in hex and in words
color[] colours = { #F15060, #78281F, #00A95C, #007373, #0078BF, #B29600, #FF48B0, #FFBF00, #FF6C2F, #000000, #FFE800, #FFFFFF };
String[] cname = { "red", "burgundy", "green", "teal", "blue", "metalgold", "fluorpink", "fluororange", "orange", "black", "yellow", "white" };

// initiate output to a text file
PrintWriter output; // output to a new text file
PFont font; // font class

void setup(){
size(1784, 1240); // 'ansicht' size for final print file size
//size(874, 620); // size for ansicht color preview
noFill();
background(colours[11]);
textAlign(LEFT);
font = createFont("Helvetica", 50, true); // Courier, 20 point, anti-aliasing on
textFont(font, 30);
output = createWriter("inkColors.txt"); // Create a new text file in the sketch directory

}

void draw(){
  
noLoop();
println(cname[r1] + ", " + cname[r2] + ", " + cname[r3] + " and " + cname[r4]);  // Printing the ink colors needed
layerOne();                // calling the functions that will create image layers for the ansicht, and address and message for the back.
background(colours[11]);
layerTwo();
background(colours[11]);
layerThree();
//background(colours[11]);
//message();
//background(colours[11]);
//address();

output.println("LayerOne should be printed in " + cname[r1]); // write the ink colors to the file, but not white or yellow
output.println("LayerTwo should be printed in " + cname[r2]);
output.println("LayerThree should be printed in " + cname[r3]);
output.println("LayerFour should be printed in " + cname[r1]); // picks a random color but not white or yellow
output.flush(); // writes the remaining data to the file
output.close(); // finishes the file
exit(); // stops the program, no need to leave the window open

}

void layerOne(){
  
pushMatrix();
translate(r5, r6);
//fill(colours[r1]);
noFill();
strokeWeight(random(10)); 
stroke(r5);
//stroke(colours[r1]);
square(0, 0, random(1200));
popMatrix();

pushMatrix();
pushStyle();
noStroke();
translate(r2, r1);
//fill(colours[r1]);
fill(r6);
//strokeWeight(random(10)); 
//stroke(r5);
//stroke(colours[r1]);
square(random(500,2000), 0, random(1200));
popStyle();
popMatrix();

save("LayerOne.png");
}

void layerTwo(){
  
pushMatrix();
pushStyle();
translate(r7, r8);
//fill(colours[r2]);
noFill();
strokeWeight(random(10)); 
stroke(r6);
//stroke(colours[r2]);
circle(0, 0, random(1200));
popStyle();
popMatrix();

pushMatrix();
pushStyle();
noStroke();
translate(r8, r7);
//strokeWeight(random(10)); 
//stroke(r7);
//stroke(colours[r2]);
//fill(colours[r2]);
fill(r7);
circle(random(800,1200), r2, random(1200));
popStyle();
popMatrix();

save("LayerTwo.png");

}

void layerThree(){
  
pushMatrix();
translate(random(700), random(700));
//fill(colours[r3]);
noFill();
//rotate(random(6));
//strokeWeight(random(10)); 
stroke(r8);
//stroke(colours[r3]);
scale(random(5, 8));
triangle(60, 150, 118, 40, 172, 150);
popMatrix();

pushMatrix();
noStroke();
translate(random(700), random(700));
//fill(colours[r3]);
fill(r7);
//rotate(random(6));
//strokeWeight(random(10)); 
//stroke(r8);
//stroke(colours[r3]);
scale(random(8, 12));
triangle(6, 15, 12, 4, 17, 15);
popMatrix();

save("LayerThree.png");

}

void message(){
pushMatrix();
translate(10, 800); 
pushStyle();
fill(0);
String line1 = "1.";
text(line1, 5, 200, 800, 100);  // Text wraps within text box
String line2 = cname[r1] + ", " + cname[r2] + ", " + cname[r3] + " and " + cname[r4];
text(line2, 5, 240, 800, 100);  // Text wraps within text box
String line3 = "primal shape machines";
text(line3, 5, 280, 800, 300);  // Text wraps within text box
String line4 = "generated for riso output by processing.org";
text(line4, 5, 320, 800, 300);  // Text wraps within text box
String line5 = "https://github.com/shrls/ansicht";
text(line5, 5, 320, 800, 300);  // Text wraps within text box
popStyle();
popMatrix();

save("message.png");

}

void address(){
pushStyle();
fill(colours[9]);
String naam = "Loes Bogers";
text(naam, 5, 200, 800, 50);  // Text wraps within text box
String straat = "Justus van Effenstraat 8";
text(straat, 5, 250, 800, 50);  // Text wraps within text box
String pc = "3027 TJ Rotterdam";
text(pc, 5, 300, 800, 50);  // Text wraps within text box
popStyle();

save("Address.png");


}

// thoughts and challenges:
// find a more elegant way to work with random functions
// split into 3 sketches ipv 1?
// opacity should not be below 40 for stronger images
// screenshots to other folder + text document
// conversion to black in functions?
// png betere kwali?
// ink colors in filename!
// bauhaus primary forms
// more parameters to generate more interesting graphics, but prevent looping through 'saves'
// working with images grabbed from the internet
// online data s.a. weather or air quality
// booleans toevoegen
// kan ook nog de distinctie korrel/raster meegeven met een boolean
// hoeveelheid elementen; zichtbaar ja/nee
// line per inch automatiseren
// nu heb ik nog teveel beslissingen zelf moeten maken achteraf
