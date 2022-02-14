public void setup(){
  size(500,500);
  rectMode(CENTER);
}

public void draw(){
  background(200, 222, 255);
  stroke(0, 14, 133);
  myFractal(250,250,480);
}

public void myFractal(int x, int y, int siz){
    ellipse(x,y,siz,siz);
    if(siz>10){
    stroke(255);
    fill((int)(Math.random()*90),(int)(Math.random()*90),(int)(Math.random()*200));
    myFractal(x,y+siz/2,siz/2);
     stroke(255);
    fill((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*250));
    myFractal(x+siz/2,y,siz/2);
    stroke(0);
    fill(255);
    myFractal(x-siz/2,y,siz/2);
    }
}
