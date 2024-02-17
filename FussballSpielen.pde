float posx=100;
float posy=100;
float vitessex=0;
float vitessey=0;
float diametre=50;
// vitesse de la deceleration
float deceleration=0.9;

void setup(){
 size(600,600);
 noStroke();
 smooth();

drawField();
}
void drawField(){
 background(0,125,0);
stroke(255);
strokeWeight(1);
line(300,0,300,600);
noFill();
ellipse(300,300,100,100);
}

void draw(){
 drawField();
 // tester si la souris est sur une balle
 if(abs(mouseX - posx) < (diametre/2) && abs(mouseY - posy) < (diametre/2)){
   // la souris sur la balle
   vitessex=mouseX-pmouseX;
   vitessey=mouseY-pmouseY;
 }

 // update la position
 posx +=vitessex;
 posy +=vitessey;

 // verifier si on sort du cadre
 if(posx > width + diametre/2) {  posx -= (width + diametre/2);  }
 if(posx < - diametre/2) { posx = (width + diametre/2); }
 if(posy > height + diametre/2) { posy -= (height + diametre/2); }
 if(posy < - diametre/2) {  posy = (height + diametre/2); }

 // decelere;
 vitessex *= deceleration;
 vitessey *= deceleration; 

 // dessiner le cercle
 fill(255);
 ellipse(posx,posy,diametre,diametre);
}
