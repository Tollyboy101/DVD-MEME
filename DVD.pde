float x,y;
float xSpeed, ySpeed;
PImage dvd;
float r,g,b;
int nDvd = 10;

dvd[] DVDS = new dvd[nDvd];

void setup(){
  size(800,600);
  
  //dvd = loadImage("dvd.png","png");
  //pickColour();
  
  //x = width/2;
  //y = height/2;
  //xSpeed = 5;
  //ySpeed = 5;
  for (int i = 0; i < nDvd; i++){
    DVDS[i] = new dvd();
  }
}

//void pickColour(){
//  r = random(100,256);
//  g = random(100,256);
//  b = random(100,256);
//}
void draw(){
  background(0);
  
  for (int i = 0; i < DVDS.length; i++){
    DVDS[i].run();
  }
  
  //tint(r,g,b);
  ////rect(x,y,80,60);
  //image(dvd,x,y,128,128);
  
  //x += xSpeed;
  //y += ySpeed;
  
  //if (x+128 >= width){
  //  xSpeed = -xSpeed;
  //  pickColour();
  //} else if (x <= 0){
  //  xSpeed = -xSpeed;
  //  pickColour();
  //}
  //if (y+128 >= height){
  //  ySpeed = -ySpeed;
  //  pickColour();
  //} else if(y <= 0){
  //  ySpeed = -ySpeed;
  //  pickColour();
  //}
}
