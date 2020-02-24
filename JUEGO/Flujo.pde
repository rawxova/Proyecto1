class Flujo {
int contador = 0;
int jug1=0, jug2=0;
float att1 = random (20), att2 = random(20);
float v1 = 100, v2 = 100;
int turno = 1;
int t;
Flujo () {}

//---------------------------------------------------------------------------------------------

void Pantallas () {
  switch (contador) {
    case 0:
    Inicio ();
    break;
    
    case 1:
    Personajes ();
    Seleccion();
    break;
    
    case 2:
    Combate ();
    break;
    
    case 3:
    Resolucion ();
    break;
  }
}

//--------------------------------------------------------------------------------------------------------------

void Inicio () {
background (243,219,67);
flowerinicio ();

{
PFont f1;
f1 = loadFont ("SpongeboyMeBob-48.vlw");
textFont (f1, 150);
fill (random (100,255),0,125,125);
textAlign (CENTER);
text ("FIGHT", 450,220);
text ("SAND", 950,520);
textFont (f1, 100);
text ("in the", 700,350);
}
{
 PFont f2;
f2= loadFont ("CharlemagneStd-Bold-48.vlw");
textFont (f2, 35);
fill (255,255,255);
textAlign (CENTER);
text ("pulsa cualquier tecla para comenzar", 700,650);}

if (keyPressed){
 contador ++; 
}

}



//----------------------------------------------------------------------------------------------------------------------------------------

void Personajes () {
background (108,200,230);

fill (202,212,169);
rect (0,530, 1400,170);

{
PFont f3;
f3 = loadFont ("Bellasya-48.vlw");
fill (random (20,255),0,128);
textFont (f3, 40);
textAlign (CENTER);
text ("Gary", 160,620);
text ("Calamardo", 430,620);
text ("Shelly", 658,620);
text ("Patricio", 973,620);
text ("Plankton", 1220,620);

textFont (f3, 50);
text ("1", 160,400);
text ("2", 430,120);
text ("3", 658,400);
text ("4", 973,100);
text ("5", 1220,400);

}
    push();
    translate(780,90);
    personajes.dibujarpatricio();
    pop();
    
    push();
    translate(1180,400);
    personajes.dibujarplankton();
    pop();
    
    push();
    translate(80,420);
    personajes.dibujargary();
    pop();
    
    push();
    translate(370,130);
    personajes.dibujarcalamardo();
    pop();
    
    push();
    translate(600,445);
    personajes.dibujarshelly();
    pop();

{
 PFont f2;
f2= loadFont ("CharlemagneStd-Bold-48.vlw");
textFont (f2, 30);
fill (0,0,0);
textAlign (CENTER);
text ("Selecciona a tus dos personajes a combatir", 700,40);
textFont (f2, 18);
text ("Presiona p para continuar ", 700,75);

}

if (keyPressed)
if (key == 'p' || key == 'P')
   contador ++;
}



//-----------------------------------------------------------------------------------------------------------------------------------------------

void Combate () {
background (208,147,92);
fill (202,212,169);
rect (0,530, 1400,170);

Comb();
Att();
Flowercomb ();

{
 PFont f2;
f2= loadFont ("CharlemagneStd-Bold-48.vlw");
textFont (f2, 20);
fill (0,0,0);
textAlign (CENTER);
text ("vida", 80,50);
text ("vida", 850,50);

textFont (f2, 25);
text (v1, 170 ,50);
text (v2, 940,50);

    // barra para vida 
fill (0,255,0);
rect ( 0 , 0 , v1 / 100f * 400 , 20 );
rect ( 800 , 0 , v2 / 100f * 400 , 20 );

fill (0,0,0);
textFont (f2, 15);
text ("Pulsa x para atacar", 160,640);
text ("Pulsa v para atacar", 1100,640);
}

if (v1 <= 0 || v2 <= 0)
contador ++;

}


//------------------------------------------------------------------------------------------------------------------------------------------

void Resolucion () {
  background (164, 181, 183);
  Flowercomb ();
fill (235, 197, 139);
rect (0,530, 1400,170);
  

hamb();
Resul();


 //Opciones, nuevo juego o salida

if (keyPressed) {
if (key == 'w' || key == 'W') { contador=0;
v1= 100; v2=100;
jug1= 0 ; jug2 = 0;
turno = 1;

}
}

 //  para salir del juego
if (keyPressed) {
  if (key == 'z' || key == 'z' )
  exit();
}

{
 PFont f2;
f2= loadFont ("CharlemagneStd-Bold-48.vlw");
textFont (f2, 20);
fill (0,0,0);
textAlign (CENTER);
text ("pulsa w para volver a jugar", 1100,580);
textFont (f2, 20);
text ("Presiona z para salir ", 1100,610);

}
}



//-------------------------------------------------------------------------------------------------------------------------------------------------

void Seleccion(){
  if(keyPressed){
    if(key == '1'){
      if(jug1 == 0)
        jug1 = 1;
       else
       jug2 = 1;
     }
  
    if(key == '2'){
      if(jug1 == 0)
       jug1 = 2;
       else
       jug2 = 2;
     }
     if(key == '3'){
      if(jug1 == 0)
       jug1 = 3;
       else
       jug2 = 3;
     }
     if(key == '4'){
      if(jug1 == 0)
       jug1 = 4;
       else
       jug2 = 4;
     }
     if(key == '5'){
      if(jug1 == 0)
       jug1 = 5;
       else
       jug2 = 5;
     }
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------

void Comb(){
  
  if(jug1 == 1)
  {
    push();
    translate(180,420);
    personajes.dibujargary();
    pop();
  }
  
  if(jug1 == 2)
  {
    push ();
    translate (180,130);
    personajes.dibujarcalamardo();
    pop ();
  }
  
  if(jug1 == 3)
  {
    pushMatrix ();
    translate (180,445);
    personajes.dibujarshelly();
    popMatrix ();
  }
  
  if(jug1 == 4)
  {
    push ();
    translate (180,90);
    personajes.dibujarpatricio();
    pop ();
  }
  
  if(jug1 == 5)
  {
    push ();
    translate (180,400);
    personajes.dibujarplankton();
    pop ();
  }
  
  
  //--------------------------------------------------
  
  
  if(jug2 == 1)
  {
    push();
    translate(920,420);
    personajes.dibujargary();
    pop();
  }
  
  if(jug2 == 2)
  {
    push();
    translate(920,130);
    personajes.dibujarcalamardo();
    pop();
  }
  
  if(jug2 == 3)
  {
    push();
    translate(920,445);
    personajes.dibujarshelly();
    pop();
  }
  
  if(jug2 == 4)
  {
    push();
    translate(920,90);
    personajes.dibujarpatricio();
    pop();
  }
  
  if(jug2 == 5)
  {
    push();
    translate(920,400);
    personajes.dibujarplankton();
    pop();
  }
  
}


//----------------------------------------------------------------------------------------------------------------------------------------------------


void Att() {
  
if (turno == 1) {
  fill (255,0,0);
  text ("Es tu turno",160,600);
if (keyPressed) {
  if (key == 'x') {
    v2 = v2 - att1;
    turno =2;
     }
   
   }

}

if (turno == 2) {
  fill (255,0,0);
  text ("Es tu turno",1100,600);
if (keyPressed) {
  if (key == 'v') {
    v1 = v1 - att2;
    turno = 1;
     }
   
   }

}
}


//----------------------------------------------------------------------------------------------------------------------------------------------------------------


void Resul() {
  
  if (v1 <= 0 )
  {
    
    {
PFont f3;
f3 = loadFont ("Bellasya-48.vlw");
fill (random (20,255),0,128);
textFont (f3, 60);
textAlign (CENTER);
text ("¡El jugador 2 es el ganador!", 700, 58);
}
 
  }
  
  if (v2 <= 0 )
  {
    {
PFont f3;
f3 = loadFont ("Bellasya-48.vlw");
fill (random (20,255),0,128);
textFont (f3, 60);
textAlign (CENTER);
text ("¡El jugador 1 es el ganador!", 700, 58);
}
  
 }
 
 // Dibujar Ganador
 
 if(jug1 == 1 && v1>=0 )
  {
    push();
    translate(700,420);
    personajes.dibujargary();
    pop();
  }
  
  if(jug1 == 2  && v1>=0 )
  {
    push ();
    translate (700,130);
    personajes.dibujarcalamardo();
    pop ();
  }
  
  if(jug1 == 3  && v1>=0)
  {
    push ();
    translate (700,445);
    personajes.dibujarshelly();
    pop ();
  }
  
  if(jug1 == 4  && v1>=0)
  {
    push ();
    translate (700,90);
    personajes.dibujarpatricio();
    pop ();
  }
  
  if(jug1 == 5 && v1>=0)
  {
    push ();
    translate (700,400);
    personajes.dibujarplankton();
    pop ();
  }
  
  
  //--------------------------------------------------
  
  
  if(jug2 == 1 && v2>=0)
  {
    push();
    translate(700,420);
    personajes.dibujargary();
    pop();
  }
  
  if(jug2 == 2  && v2>=0)
  {
    push();
    translate(700,130);
    personajes.dibujarcalamardo();
    pop();
  }
  
  if(jug2 == 3 && v2>=0)
  {
    push();
    translate(700,445);
    personajes.dibujarshelly();
    pop();
  }
  
  if(jug2 == 4 && v2>=0)
  {
    push();
    translate(700,90);
    personajes.dibujarpatricio();
    pop();
  }
  
  if(jug2 == 5 && v2>=0)
  {
    push();
    translate(700,400);
    personajes.dibujarplankton();
    pop();
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------------
void hamb () {
    t = 9;
    pushMatrix ();
    translate (300,300);
    noStroke();
    
    // contorno
    fill(0,0,0);
    rect (t*4,t*0,t*8,t);
    rect (t*3,t,t*10,t);
    rect (t*2,t*2,t*12,t);
    rect (t,t*3,t*14,t*13);
    rect (t*2,t*14,t*12,t);
    
    rect (t*0,t*7,t,t*5);
    rect (t*15,t*7,t,t*5);
    
   // obscuro pan
    fill(255, 165, 0);
    rect (t*4,t,t*8,t);
    rect (t*3,t*2,t*10,t);
    rect (t*2,t*3,t*12,t*3);
    rect (t*3,t*13,t,t);
    rect (t*6,t*13,t*2,t);
    rect (t*10,t*13,t,t);
    rect (t*13,t*13,t,t);
    rect (t*2,t*14,t*12,t);
    
    // claro pan
    fill(240,230,140);
    rect (t*6,t*2,t,t);
    rect (t*10,t*2,t,t);
    rect (t*4,t*3,t,t);
    rect (t*8,t*3,t,t);
    rect (t*3,t*4,t,t);
    rect (t*6,t*4,t,t);
    rect (t*10,t*4,t,t);
    rect (t*12,t*4,t,t);
    
    // jitomate
    fill(255, 69, 0);
    rect (t,t*7,t*14,t);
    
    // carne
    fill(205, 92, 92);
    rect (t,t*9,t*14,t);
    
    // lechuga
    fill(50,205,50);
    rect (t,t*11,t*14,t);
    rect (t*2,t*12,t,t);
    rect (t*4,t*12,t*2,t);
    rect (t*8,t*12,t*2,t);
    rect (t*11,t*12,t*2,t);
    
     popMatrix ();
   }
   
   //----------------------------------------------------------------------------
   void flowerinicio () {
     
     //flor1
    t = 7;
    pushMatrix ();
    translate (860,70);
    noStroke();
    
    fill(255,255,255, 80);
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
     
     // flor2
      t = 3;
    pushMatrix ();
    translate (700,50);
    noStroke();
    
    fill(255,255,255, 70);
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
     
     //flor 3
      t = 8;
    pushMatrix ();
    translate (235,320);
    noStroke();
    
    fill(255,255,255, 70);
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
   }

//------------------------- flower comb

void Flowercomb () {
     
     //flor1
    t = 5;
    pushMatrix ();
    translate (1200,70);
    noStroke();
    
    fill(221,220,176);
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
     
     // flor2
      t = 3;
    pushMatrix ();
    translate (700,50);
    noStroke();
    
    
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
     
     //flor 3
      t = 3;
    pushMatrix ();
    translate (80,100);
    rotate (-.5);
    noStroke();
    
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
     
     //flor4
      t = 1;
    pushMatrix ();
    translate (120,500);
    noStroke();
    
    
    rect (t*12,t*0,t*6,t);
    rect (t*11,t,t*8,t);
    rect (t*10,t*2,t*2,t);
    rect (t*18,t*2,t*2,t);
    rect (t*9,t*3,t*2,t);
    rect (t*19,t*3,t*2,t);
    rect (t*9,t*4,t*2,t);
    rect (t*20,t*4,t,t*10);
    rect (t*9,t*5,t,t*3);
    rect (t*30,t*5,t*6,t);
    rect (t*10,t*6,t,t*4);
    rect (t*28,t*6,t*3,t);
    rect (t*36,t*6,t*2,t);
    rect (t*26,t*7,t*3,t);
    rect (t*37,t*7,t,t*5);
    rect (t*11,t*8,t,t*3);   
    rect (t*25,t*8,t*2,t);
    rect (t*12,t*9,t,t*2);
    rect (t*24,t*9,t*2,t);
    rect (t*13,t*10,t,t*2);
    rect (t*23,t*10,t*2,t);
    rect (t*14,t*11,t,t*2);
    rect (t*23,t*11,t,t*2);
    rect (t*36,t*11,t*2,t);
    rect (t*15,t*12,t*2,t*2);
    rect (t*22,t*12,t,t);
    rect (t*35,t*12,t*2,t);
    rect (t*20,t*13,t*3,t);
    rect (t*33,t*13,t*3,t);
    rect (t*4,t*14,t*5,t);
    rect (t*16,t*14,t,t*2);
    rect (t*30,t*14,t*4,t);
    rect (t*2,t*15,t*15,t);
    rect (t*18,t*15,t,t);
    rect (t*27,t*15,t*4,t);
    rect (t,t*16,t*2,t);
    rect (t*11,t*16,t*4,t);
    rect (t*17,t*16,t*3,t);
    rect (t*24,t*16,t*3,t);
    rect (t*0,t*17,t*2,t);
    rect (t*17,t*17,t*4,t);
    rect (t*24,t*17,t,t);
    rect (t*0,t*18,t,t*4);
    rect (t*15,t*18,t*2,t);
    rect (t*18,t*18,t*3,t);
    rect (t*24,t*18,t*10,t);
    rect (t*13,t*19,t*2,t);
    rect (t*16,t*19,t,t*4);
    rect (t*19,t*19,t,t);
    rect (t*25,t*19,t,t);
    rect (t*32,t*19,t*5,t);
    rect (t*12,t*20,t*2,t);
    rect (t*21,t*20,t,t*6);
    rect (t*36,t*20,t*2,t);
    rect (t,t*21,t,t*2);
    rect (t*10,t*21,t*2,t);
    rect (t*20,t*21,t*3,t);
    rect (t*38,t*21,t,t);
    rect (t,t*22,t*2,t);
    rect (t*7,t*22,t*4,t);
    rect (t*20,t*22,t,t);
    rect (t*23,t*22,t,t);
    rect (t*39,t*22,t,t*4);
    rect (t*2,t*23,t*6,t);
    rect (t*15,t*23,t,t*2);
    rect (t*24,t*23,t,t);
    rect (t*14,t*24,t*2,t);
    rect (t*25,t*24,t,t);
    rect (t*14,t*25,t,t);
    rect (t*22,t*25,t,t*5);
    rect (t*26,t*25,t*2,t);
    rect (t*38,t*25,t,t);
    rect (t*13,t*26,t,t*5);
    rect (t*27,t*26,t*3,t);
    rect (t*36,t*26,t*3,t);
    rect (t*29,t*27,t*8,t);
    rect (t*21,t*29,t,t*2);
    rect (t*14,t*30,t,t);
    rect (t*20,t*30,t,t);
    rect (t*15,t*31,t*6,t);
  
     popMatrix ();
   }
   
}
