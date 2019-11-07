
float random1 = random(12);
int r1 = int(random1);

float random2 = random(12);
int r2 = int(random2);

float random3 = random(12);
int r3 = int(random3);

color[] colours = { #FF0000, #78281F, #FFFF00, #008000, #007373, #0000E5, #B29600, #FF1493, #FFBF00, #FFA500, #000000, #FFFFFF };
String[] cname = { "red", "burgundy","yellow", "green", "teal", "blue", "metalgold", "fluorpink", "fluororange", "orange", "black", "white" };

void setup(){
size(874, 620);
noStroke();
background(colours[11]);
}

void draw(){
  
pushMatrix();
translate(80, 80);
fill(colours[r1]);
rect(0, 0, 200, 200);
fill(colours[r2]);
rect(40, 60, 120, 120);
fill(colours[r3]);
rect(60, 90, 80, 80);
popMatrix();

println(cname[r1] + ", " + cname[r2] + " and " + cname[r3]);  // Print de kleuren van de inkt die nodig is

}

// opacity
// screenshots
// conversion to black
// 3 sketches ipv 1?
