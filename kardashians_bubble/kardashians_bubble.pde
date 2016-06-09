int[] kim = {3,6,11,18,7,3,2,3};
int [] kourt = {0,1,3,8,2,0,3,0};
int[] khloe = {0,1,2,6,4,2,1,1};
int[] kendall = {0,0,0,1,6,2,5,2};
int[] kylie = {0,0,0,2,3,2,2,2}; 

// background windows 
void setup(){
  size (800,600);
  background(#B7CCFF);
  PFont font;
  font = createFont("Helvetica-48", 15);
  textFont(font);
}

void draw(){
  int c = 255;
  int y = 2008;
  // set up various blocks for years 
  for (int i = 0; i<800; i = i+100){    
    fill(c, 200, 255);
    rect(i, 0, 100, 600);
    strokeWeight(0); 
    c = c-31;
    
    // Label each year 
    String y_s = "" + y;
    fill(255);
    text(y_s, i + 30, 570);
    y = y + 1;
    
  }
  
  // set up key
  textSize(13);
  text("Kardashian Family Magazine Covers Through the Years", 5, 20);
  textSize(10);
  text("Kim", 515, 20);
  fill(255);
  ellipse(550, 15, 10, 10);
  
  text("Kourtney", 515, 40);
  fill(192);
  ellipse(570, 35,10,10);
  
  fill(255);
  text("Khloe", 515, 60);
  fill(129);
  ellipse(550, 55, 10,10);
  
  fill(255);
  text("Kylie", 615, 20);
  fill(66);
  ellipse(650, 15, 10,10);
  
  fill(255);
  text("Kendall", 615, 40);
  fill(0);
  ellipse(660, 35, 10, 10);


// map each kardashian value to circle 

  int xpos = 50; // variable to keep track of which year we are drawing in
  int kimpos = 500;
  int kourtpos = 400;
  int khloepos = 300;
  int kyliepos = 200;
  int kendallpos = 100;
  for (int i = 0; i<8; i = i+1){
    // map kim
    float kval = map(kim[i], 0,18, 10,100);
    fill(255);
    ellipse(xpos, kimpos, kval, kval);
    fill(0);
    textSize(10);
    text(kim[i], xpos-3, kimpos+3);
    xpos = xpos + 100;
    
    // map kourtney
    float kourtval = map(kourt[i], 0,18,10,100);
    fill(192);
    ellipse(xpos, kourtpos, kourtval, kourtval);
    fill(0);
    text(kourt[i], xpos-3, kourtpos+3);

    
    // map khloe
    float khloeval = map(khloe[i],0,18,10,100);
    fill(129);
    ellipse(xpos, khloepos, khloeval, khloeval);
    fill(255);
    text(khloe[i], xpos-3, khloepos+3);    
    
    // map kylie
    float kylieval = map(kylie[i], 0,18,10,100);
    fill(66);
    ellipse(xpos, kyliepos, kylieval, kylieval);
    fill(255);
    text(kylie[i], xpos-3, kyliepos+3);      
    
    // map kendall
    float kendallval = map(kendall[i], 0,18,10,100);
    fill(0);
    ellipse (xpos, kendallpos, kendallval, kendallval);
    fill(255);
    text(kendall[i], xpos-3, kendallpos+3);    
    
  }
}
  