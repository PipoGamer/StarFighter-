
PImage fons ;
PImage Vader,VaderDefensa,VaderAtac1,VaderAtac2,vader;
PImage Luke, LukeAtac1, luke,LukeAtac2,LukeDefensa;
int puntAX;
int puntAY;
int puntBX;
int puntBY;
float VidatotalL, VidarestantL;
int ComptaLuke,ComptaVader;
void setup() {
  fons=loadImage("Fondo.png");
  Vader=loadImage("VaderParat.png");
  Luke=loadImage("LukeRepos.png");
  LukeAtac1=loadImage("LukeAtac1.png");
  LukeAtac2=loadImage("LukeAtac2.png");
  LukeDefensa=loadImage("LukeDefensa.png");
  VaderAtac1=loadImage("VaderAtac1.png");
  VaderAtac2=loadImage("VaderAtac2.png");
  VaderDefensa=loadImage("VaderDefensa.png");
  ComptaLuke=0;  
  ComptaVader=0;
  luke=Luke;
  vader=Vader;
  size(700, 700);
  puntAX=width-200;
  puntAY=height-243;
  puntBX=50;
  puntBY=350;
  VidatotalL=250;
  VidarestantL=25;
}
void draw() {
  image(fons, 0, 0, width, height);
  image(vader, puntAX, puntAY, 125, 190);
  image(luke, puntBX, puntBY, 225, 300);
  fill(205, 0, 0);
  stroke(255);
  rect(20, 40, 300, 25);
  ComptaLuke++;
  ComptaVader++;
  if (ComptaLuke==13) {
    luke=Luke;
  }
   if (ComptaVader==13) {
    vader=Vader;
  }
  fill(205, 205, 0);
  float llarg=VidarestantL/VidatotalL*300;
  noStroke();
  rect(21, 41, llarg, 24);
  if(puntAX<=0){
    puntAX=0;
  }

if(puntBX<=0){
    puntBX=0;
}
if(puntAX+125>=width){
    puntAX=width-125;
}
if(puntBX+125>=width){
    puntBX=width-125;
}

}

void keyPressed() {
  if (key==CODED) {
    if (keyCode==LEFT) {
      puntAX=puntAX-10;
      
    } else if (keyCode==RIGHT) {
      puntAX=puntAX+10;
    }
  }
if(keyCode==UP){
    vader=VaderAtac1;
    ComptaVader=5;
}
if(keyCode==DOWN){
  vader=VaderAtac2;
  ComptaVader=5;
}
  if (key=='q') {
    luke=LukeAtac1;
    ComptaLuke=5;
  }
  if (key=='w') {
    luke=LukeAtac2;
    ComptaLuke=5;
  }
if (key=='e') {
    luke=LukeDefensa;
    ComptaLuke=5;
  }

  if (key=='a') {
    puntBX=puntBX-10;
  } else if (key=='d') {
    puntBX=puntBX+10;
  }



}