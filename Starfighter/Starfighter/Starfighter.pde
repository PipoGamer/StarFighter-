
PImage fons ;
PImage   Vader, VaderDefensa, VaderAtac1, VaderAtac2, vader;
PImage Luke, LukeAtac1, luke, LukeAtac2, LukeDefensa;
int puntAX;
int puntAY;
int puntBX;
int puntBY;
float VidatotalL, VidarestantL;
float VidatotalV, VidarestantV;
int ComptaLuke, ComptaVader;


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
  size(850, 700);
  puntAX=width-350;
  puntAY=height-350;
  puntBX=50;
  puntBY=350;
  VidatotalL=350;
  VidarestantL=VidatotalL;
  VidatotalV=350;
  VidarestantV=VidatotalV;
}
void draw() {
  image(fons, 0, 0, width, height);
  image(vader, puntAX, puntAY, 265, 300);
  image(luke, puntBX, puntBY, 225, 300);
  fill(205, 0, 0);
  stroke(255);
  rect(20, 40, 350, 25);
  fill(205, 0, 0);
  stroke(255);
  rect(470, 40, 350, 25);
  ComptaLuke++;
  ComptaVader++;
  if (ComptaLuke==13) {
    luke=Luke;
  }
  if (ComptaVader==13) {
    vader=Vader;
  }
  fill(205, 205, 0);
  float llarg=VidarestantL/VidatotalL*350;
  noStroke();
  rect(21, 41, llarg, 24);
  fill(205, 205, 0);
  float llargV=VidarestantV/VidatotalV*350;
  noStroke();
  rect(471, 41, llargV, 24);

  if (puntAX<=-150) {
    puntAX=-150;
  }

  if (puntBX<=0) {
    puntBX=0;
  }
  if (puntAX+265>=width) {
    puntAX=width-265;
  }
  if (puntBX+125>=width) {
    puntBX=width-125;
  }
  if (VidarestantV<=0) {
    VidarestantV=0;
  }
  if (VidarestantL<=0) {
    VidarestantL=0;
  }
}
void keyPressed() {
  if (key==CODED) {
    if (keyCode==LEFT) {
      puntAX=puntAX-10;
    } else if (keyCode==RIGHT) {
      puntAX=puntAX+10;
    }

    if (keyCode==UP) {
      vader=VaderAtac1;
      ComptaVader=5;
      float vaderDreta=puntAX+83;
      if (vaderDreta>=puntBX && vaderDreta<=puntBX+62 ) {
        VidarestantL-=20;
      }
    }
    if (keyCode==DOWN) {
      vader=VaderAtac2;
      ComptaVader=5;
      float vaderdreta=puntAX+83;
      if (vaderdreta>=puntBX && vaderdreta<=puntBX+62 ) {
        VidarestantL-=20;
      }
    }
    if (keyCode==CONTROL) {
      vader=VaderDefensa;
      ComptaVader=5;
    }
  } else {
    if (key=='q') {
      luke=LukeAtac1;
      ComptaLuke=5;
      float lukeDreta=puntBX+32;
      if (lukeDreta>=puntAX && lukeDreta<=puntAX+83 ) {
        VidarestantV-=20;
      }
    }
    if (key=='w') {
      luke=LukeAtac2;
      ComptaLuke=5;
      float lukeDreta=puntBX+62;
      if (lukeDreta>=puntAX && lukeDreta<=puntAX+83 ) {
        VidarestantV-=20;
      }
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
}