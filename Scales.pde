boolean shift = false;
int r;
int g;
int b;
int red;
int green;
int blue;
void setup() {
  size(700, 700);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
}
void draw() {

for(int y = -30; y < 800; y += 48){
  for(int x = -30; x < 800; x += 110){
    if(shift == true){
      red = 224;
      green = 169;
      blue = 240;
      scale(x+55,y);
    }
     else{
       red = 245;
       green = 239;
       blue = 168;
      scale(x,y);
     }
  }
  if(shift == true){
    shift = false;
  }
  else{
    shift = true;
  }
 
}}
void scale(int x, int y) {

  fill(#9CDEF5);
  ellipse(x,y,100,100);
  fill(red,green,blue);
  //bigger
  beginShape();
  curveVertex(x,y-40-15);
  curveVertex(x,y-40-15);
  curveVertex(x-15-15,y-20);
  curveVertex(x-40-15,y);
  curveVertex(x-15-15,y+20);
  curveVertex(x,y+40+15);
  curveVertex(x,y+40+15);
  endShape();
  beginShape();
  curveVertex(x,y-40-15);
  curveVertex(x,y-40-15);
  curveVertex(x+15+15,y-20);
  curveVertex(x+40+15,y);
  curveVertex(x+15+15,y+20);
  curveVertex(x,y+40+15);
  curveVertex(x,y+40+15);
  endShape();
 fill(#C8B2FC,300);
  //smaller
  beginShape();
  curveVertex(x,y-40);
  curveVertex(x,y-40);
  curveVertex(x-15,y-20);
  curveVertex(x-40,y);
  curveVertex(x-15,y+20);
  curveVertex(x,y+40);
  curveVertex(x,y+40);
  endShape();
  beginShape();
  curveVertex(x,y-40);
  curveVertex(x,y-40);
  curveVertex(x+15,y-20);
  curveVertex(x+40,y);
  curveVertex(x+15,y+20);
  curveVertex(x,y+40);
  curveVertex(x,y+40);
  endShape();
 
r = 250 + (int)(Math.random()*50);
g = 93 + (int)(Math.random()*50);
b =  143 + (int)(Math.random()*50);
fill(r, g, b,150);
  //heart
  beginShape();
  curveVertex(x, y+90);
  curveVertex(x, y+24);
  curveVertex(x-24, y);
  curveVertex(x-15, y-15);
  curveVertex(x, y-10);
  curveVertex(x, y+30);
  endShape();
 
  beginShape();
  curveVertex(x, y+30);
  curveVertex(x, y-10);
  curveVertex(x+15, y-15);
  curveVertex(x+24, y);
  curveVertex(x, y+24);
  curveVertex(x, y+90);
  endShape();
}

