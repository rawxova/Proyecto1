class Personaje {
  int t;
  
  Personaje (){}
  
  void dibujarpatricio () {
    t = 15;
    pushMatrix ();
    translate (0,0);
    noStroke();
    
    //color rosa
    fill(255,182,193);
    rect (t*7,t,t,t);
    rect (t*7,t*2,t*2,t);
    rect (t*7,t*3,t*3,t);
    rect (t*8,t*4,t*3,t);
    rect (t*8,t*5,t*4,t);
    rect (t*8,t*6,t*5,t);
    rect (t*8,t*7,t*2,t);
    
    
    fill(0,0,0);
    rect (t*10,t*7,t*3,t);
    fill(255,182,193);
    rect (t*11,t*7,t*1,t);
    rect (t*8,t*8,t*6,t);
    rect (t*0,t*9,t*2,t);
    rect (t*8,t*9,t*2,t);
    fill(255,255,255);
    rect (t*10,t*9,t*5,t);
    fill(255,182,193);
    rect (t*0,t*10,t*4,t);
    rect (t*8,t*10,t*2,t);
    fill(255,255,255);
    rect (t*10,t*10,t*5,t);
    
    fill(0,0,0);
    rect (t*11,t*10,t,t);
    rect (t*13,t*10,t,t);
    fill(255,182,193);
    rect (t*19,t*10,t*3,t);
    rect (t*0,t*11,t*5,t);
    rect (t*8,t*11,t*2,t);
    rect (t*18,t*11,t*4,t);
    
    fill(255,255,255);
    rect (t*10,t*11,t*5,t);
    fill(255,182,193);
    rect (t,t*12,t*5,t);
    rect (t*8,t*12,t*7,t);
    rect (t*17,t*12,t*5,t);
    
    fill(0,0,0);
    rect (t*9,t*12,t,t);
    fill(255,182,193);
    rect (t*2,t*13,t*7,t);
    rect (t*14,t*13,t,t);
    rect (t*16,t*13,t*5,t);
    
    fill(0,0,0);
    rect (t*9,t*13,t*5,t);
   
    fill(255,182,193);
    rect (t*2,t*14,t*8,t);
    rect (t*14,t*14,t*7,t);
    
    fill(0,0,0);
    rect (t*10,t*14,t*4,t);
    
    //lengua roja
    fill(255,0,0);
    rect (t*11,t*14,t*2,t);
    
    fill(255,182,193);
    rect (t*3,t*15,t*8,t);
    rect (t*15,t*15,t*5,t);
    
    fill(0,0,0);
    rect (t*11,t*15,t*4,t);
    
    fill(255,182,193);
    rect (t*4,t*16,t*16,t);
    
    fill(255,182,193);
    rect (t*5,t*17,t*14,t*3);
    
    //morado short
    fill(139,0,139);
    rect (t*5,t*20,t,t);
    rect (t*18,t*20,t,t);
    fill(255,182,193);
    rect (t*6,t*20,t*12,t);
    fill(139,0,139);
    rect (t*5,t*21,t*2,t);
    rect (t*17,t*21,t*2,t);
    fill(255,182,193);
    rect (t*7,t*21,t*10,t);
    fill(139,0,139);
    rect (t*7,t*22,t*3,t);
    rect (t*15,t*22,t*4,t);
    
    //verde short
    fill(0,255,0);
    rect (t*5,t*22,t*2,t);
    rect (t*17,t*22,t*1,t);
    fill(255,182,193);
    rect (t*10,t*22,t*5,t);
    
    fill(0,255,0);
    rect (t*5,t*23,t*4,t);
    rect (t*18,t*23,t,t*4);
    fill(139,0,139);
    rect (t*9,t*23,t*9,t);
    
    fill(139,0,139);
    rect (t*5,t*24,t*3,t*2);
    rect (t*13,t*24,t*5,t);
    rect (t*15,t*25,t*3,t);
    
    fill(0,255,0);
    rect (t*8,t*24,t*5,t*2);
    rect (t*15,t*24,t,t);
    rect (t*13,t*25,t*2,t*2);
    
    fill(139,0,139);
    rect (t*5,t*26,t*4,t);
    
    fill(0,255,0);
    rect (t*6,t*26,t,t);
    rect (t*9,t*26,t*9,t);
    
    fill(139,0,139);
    rect (t*6,t*27,t*3,t);
    rect (t*18,t*27,t,t);
    
    fill(0,255,0);
    rect (t*9,t*27,t*3,t);
    rect (t*14,t*27,t*4,t);
    
    fill(255,182,193);
    rect (t*7,t*28,t*4,t*2);
    rect (t*15,t*28,t*4,t*2);
    rect (t*8,t*30,t*2,t);
    rect (t*16,t*30,t*2,t);
    
    popMatrix ();
  }
  
  
  
  void dibujarplankton () {
    t = 6;
    
    pushMatrix ();
    translate (0,0);
    noStroke();
    
    // negro
    fill(0,0,0);
    rect (t*11,t*0,t,t);
    rect (t*10,t,t,t*2);
    rect (t*9,t*3,t,t*5);
    rect (t*15,t*6,t*5,t);
    rect (t*13,t*7,t*2,t);
    rect (t*8,t*8,t*3,t);
    rect (t*12,t*8,t,t);
    rect (t*7,t*9,t*5,t);
    rect (t*6,t*10,t*7,t);
    rect (t*5,t*11,t*8,t*2);
    rect (t*4,t*13,t*8,t*2);
    rect (t*0,t*15,t,t);
    rect (t*4,t*15,t*7,t);
    rect (t,t*16,t*10,t);
    rect (t*14,t*16,t,t);
    rect (t*3,t*17,t*11,t);
    rect (t*3,t*18,t*7,t*3);
    rect (t*4,t*21,t*6,t);
    rect (t*5,t*22,t*4,t);
    rect (t*5,t*23,t,t*2);
    rect (t*7,t*23,t,t*2);
    
    // verde
    fill(46,139,87);
    rect (t*8,t*9,t*3,t);
    rect (t*10,t*10,t*2,t);
    rect (t*10,t*11,t*2,t*2);
    rect (t*10,t*13,t,t);
    rect (t*5,t*14,t*6,t);
    rect (t*5,t*15,t*5,t);
    rect (t*4,t*16,t*4,t);
    rect (t*9,t*16,t,t);
    rect (t*4,t*17,t*2,t);
    rect (t*8,t*17,t*2,t);
    rect (t*4,t*18,t*5,t*3);
    rect (t*5,t*21,t*4,t);
    
    //amarillo
    fill(255,255,0);
    rect (t*9,t*11,t,t*2);
    rect (t*5,t*13,t*5,t);
    rect (t*6,t*14,t*3,t);
    
    //beige ojo
    fill(255,255,224);
    rect (t*7,t*10,t,t);
    rect (t*6,t*11,t*3,t*2);
    rect (t*6,t*13,t*2,t);
    
    //rojo ojo
    fill(255,0,0);
    rect (t*7,t*12,t,t);
    
    popMatrix ();
  }
  
  
  
  void dibujargary () {
    t = 5;
    pushMatrix ();
    translate (0,0);
    noStroke();
    
    //amarillo gary
    fill(255,215,0);
     rect (t*17,t*3,t*5,t*5);
     rect (t*25,t*3,t*5,t*5);
     
     //rojito gary
    fill(178,34,34);
    rect (t*27,t*3,t*3,t*3);
    rect (t*19,t*3,t*3,t*3);
    
    // negro
    fill(0,0,0);
    rect (t*7,t*0,t*6,t);
    rect (t*5,t,t*10,t);
    rect (t*4,t*2,t*12,t);
    rect (t*17,t*2,t*5,t);
    rect (t*25,t*2,t*5,t);
    rect (t*3,t*3,t,t);
    rect (t*16,t*3,t,t*5);
    rect (t*22,t*3,t,t*5);
    rect (t*24,t*3,t,t*5);
    rect (t*30,t*3,t,t*5);
    rect (t*30,t*3,t,t*5);
    rect (t*20,t*4,t,t);
    rect (t*28,t*4,t,t);
    rect (t*2,t*4,t,t*2);
    rect (t,t*6,t,t*2);
    rect (t*17,t*8,t*5,t);
    rect (t*25,t*8,t*5,t);
    // negro linea grande
    rect (t*0,t*8,t,t*7);
    rect (t*19,t*9,t,t*9);
    rect (t*20,t*11,t,t*4);
    rect (t,t*15,t,t*2);
    rect (t*2,t*17,t,t*2);
    rect (t*3,t*19,t,t*2);
    rect (t*4,t*21,t,t*2);
    rect (t*3,t*23,t*9,t);
    rect (t*15,t*23,t*2,t);
    rect (t*29,t*23,t,t);
    rect (t*2,t*24,t,t);
    rect (t*12,t*24,t*3,t);
    rect (t*30,t*24,t,t);
    rect (t*3,t*25,t*3,t);
    rect (t*16,t*25,t*2,t);
    rect (t*28,t*25,t*2,t);
    //fin gusano
    rect (t*6,t*26,t*10,t);
    rect (t*18,t*26,t*10,t);
    // antenitas
    rect (t*17,t*22,t*12,t);
    rect (t*28,t*9,t,t*13);
    rect (t*26,t*9,t,t*9);
    rect (t*25,t*18,t,t*4);
    rect (t*24,t*20,t,t*2);
    rect (t*23,t*15,t,t*5);
    rect (t*22,t*10,t,t*5);
    rect (t*21,t*9,t,t*13);
    rect (t*20,t*20,t,t);
    rect (t*19,t*20,t,t);
    rect (t*18,t*18,t,t*2);
    
    //rosa gary
    fill(219,112,147);
    rect (t*7,t,t*6,t);
    rect (t*5,t*2,t*10,t);
    rect (t*4,t*3,t*12,t);
    rect (t*3,t*4,t*13,t*2);
    rect (t*2,t*6,t*14,t*2);
    //cap gde
     rect (t,t*8,t*16,t);
     rect (t,t*9,t*18,t*6);
     rect (t,t*9,t*18,t*6);
     rect (t*2,t*15,t*17,t*2);
     rect (t*3,t*17,t*16,t);
     rect (t*3,t*18,t*15,t);
     rect (t*4,t*19,t*14,t);
     rect (t*4,t*20,t*15,t);
     rect (t*5,t*21,t*16,t);
     rect (t*5,t*22,t*12,t);
     //fin rosa
     rect (t*12,t*23,t*3,t);
   
    //azulito manchas
    fill(70,130,180);
    rect (t*6,t*3,t*2,t*2);
    rect (t*3,t*7,t*2,t*2);
    rect (t*11,t*7,t*2,t*2);
    rect (t*14,t*12,t*2,t*2);
    
    //azulito gusanito
    fill(32,178,170);
    rect (t*5,t*24,t*7,t);
    rect (t*15,t*24,t*13,t);
    rect (t*17,t*23,t*12,t);
    rect (t*21,t*22,t*4,t);
    rect (t*20,t*9,t,t*2);
    rect (t*21,t*10,t,t*5);
    rect (t*22,t*15,t,t*7);
    rect (t*23,t*20,t,t*2);
    rect (t*26,t*18,t,t*4);
    rect (t*27,t*9,t,t*13);
    
    //verde gusanito
    fill(154,205,50);
    rect (t*6,t*25,t*10,t);
    rect (t*18,t*25,t*10,t);
    rect (t*3,t*24,t*2,t);
    rect (t*28,t*24,t*2,t);
    
    //carmin caracol
    fill(220,20,60);
    rect (t*6,t*9,t*2,t);
    rect (t*5,t*10,t*4,t);
    rect (t*4,t*11,t*6,t);
    rect (t*4,t*12,t,t*5);
    rect (t*5,t*12,t,t*6);
    rect (t*8,t*12,t*3,t);
    
    rect (t*9,t*13,t,t*4);
    rect (t*10,t*13,t,t*10);
    rect (t*11,t*14,t,t*9);
    rect (t*7,t*15,t,t*3);
    rect (t*6,t*16,t,t*3);
    rect (t*12,t*17,t,t*5);
    
    rect (t*9,t*21,t*4,t);
    rect (t*9,t*22,t*3,t);
   
    popMatrix ();
  }
  
   void dibujarcalamardo () {
      t = 8;
     
    pushMatrix ();
    translate (0,0);
    noStroke();
    
    //negro
    fill(0,0,0);
    rect (t*5,t*0,t*8,t);
    rect (t*3,t,t*11,t);
    rect (t*2,t*2,t*13,t);
    rect (t,t*3,t*15,t);
    rect (t*0,t*4,t*16,t);
    rect (t*0,t*5,t*16,t);
    rect (t*0,t*6,t*16,t);
    rect (t*0,t*7,t*15,t);
    rect (t,t*8,t*13,t);
    rect (t*2,t*9,t*11,t);
    rect (t*4,t*10,t*10,t);
    rect (t*5,t*11,t*10,t);
    rect (t*4,t*12,t*11,t);
    rect (t*4,t*13,t*11,t);
    rect (t*4,t*14,t*11,t);
    rect (t*4,t*15,t*11,t*2);
    rect (t*6,t*17,t,t*2);
    rect (t*10,t*17,t*5,t);
    //fin nariz
    rect (t*11,t*18,t*3,t);
    rect (t*5,t*19,t,t*3);
    rect (t*4,t*22,t,t*2);
    rect (t*3,t*24,t,t*7);
    rect (t*10,t*27,t,t*2);
    rect (t*5,t*29,t,t);
    rect (t*6,t*30,t,t*19);
    rect (t*11,t*30,t,t*7);
    rect (t*4,t*31,t,t*3);
    rect (t*10,t*32,t,t*3);
    rect (t,t*33,t*2,t);
    rect (t*0,t*34,t*4,t);
    rect (t*0,t*35,t,t*2);
    rect (t*2,t*35,t,t);
    rect (t*5,t*35,t,t*2);
    rect (t*9,t*35,t,t);
    rect (t*8,t*36,t,t*4);
    rect (t,t*37,t*4,t);
    rect (t*9,t*37,t*2,t);
    rect (t*5,t*40,t,t*13);
    rect (t*9,t*40,t,t*10);
    rect (t*2,t*48,t,t);
    rect (t*4,t*48,t,t);
    rect (t*13,t*48,t,t);
    rect (t*10,t*48,t,t);
    rect (t,t*49,t*4,t);
    rect (t*7,t*49,t*2,t);
    rect (t*13,t*49,t*2,t);
    rect (t*11,t*49,t,t);
    rect (t*0,t*50,t,t*2);
    rect (t*2,t*50,t*2,t);
    rect (t*8,t*50,t,t);
    rect (t*11,t*50,t*2,t);
    rect (t*14,t*50,t,t);
    rect (t*4,t*51,t*2,t);
    rect (t*7,t*51,t,t);
    rect (t*10,t*51,t,t);
    rect (t*13,t*51,t*2,t);
    //fin
    rect (t,t*52,t*13,t);
     
    //piel clamardo
    fill(102,205,170);
    rect (t*5,t,t*8,t);
    rect (t*3,t*2,t*11,t);
    rect (t*2,t*3,t*13,t);
    rect (t,t*4,t*14,t);
    rect (t,t*5,t*6,t);
    rect (t*10,t*5,t,t);
    rect (t*13,t*5,t*2,t);
    rect (t,t*6,t*5,t);
    rect (t*14,t*6,t,t);
    rect (t*2,t*7,t*4,t);
    rect (t*3,t*8,t*3,t);
    rect (t*5,t*9,t,t);
    rect (t*6,t*10,t,t);
    rect (t*10,t*10,t*3,t);
    rect (t*7,t*11,t*3,t);
    rect (t*11,t*11,t*3,t);
    rect (t*6,t*12,t*4,t);
    //nariz larga
    rect (t*11,t*12,t*3,t*5);
    rect (t*6,t*13,t*4,t);
    rect (t*6,t*14,t,t);
    rect (t*6,t*15,t*4,t);
    //fin nariz cuello
    rect (t*7,t*17,t,t*3);
    rect (t*12,t*17,t*2,t);
    //tent
    rect (t*4,t*26,t,t*5);
    rect (t*5,t*30,t,t*5);
    //largotepierna
    rect (t*7,t*32,t,t*17);
    rect (t*8,t*32,t,t*4);
    rect (t*9,t*32,t,t*3);
    rect (t*2,t*34,t,t);
    rect (t*4,t*34,t,t);
    rect (t,t*35,t,t*2);
    rect (t*3,t*35,t*2,t*2);
    rect (t*10,t*35,t,t);
    rect (t*2,t*36,t,t);
    rect (t*9,t*36,t*2,t);
    rect (t*8,t*40,t,t*9);
    rect (t*6,t*49,t,t);
    rect (t*10,t*49,t,t);
    rect (t,t*50,t,t);
    rect (t*4,t*50,t,t);
    rect (t*6,t*50,t*2,t);
    rect (t*9,t*50,t*2,t);
    rect (t*13,t*50,t,t);
    rect (t,t*51,t*3,t);
    rect (t*6,t*51,t,t);
    rect (t*8,t*51,t*2,t);
    rect (t*11,t*51,t*2,t);

    //ropita clara
    fill(184,134,11);
    rect (t*6,t*20,t,t*2);
    rect (t*8,t*21,t,t);
    rect (t*5,t*22,t,t);
    rect (t*7,t*22,t,t);
    rect (t*5,t*23,t*5,t);
    rect (t*4,t*24,t*6,t*2);
    rect (t*6,t*26,t*3,t*4);
    rect (t*9,t*28,t,t);
    rect (t*9,t*29,t,t);
    rect (t*7,t*30,t*3,t);
    
    //ropita obscura
    fill(139, 69, 19);
    rect (t*6,t*19,t,t);
    rect (t*8,t*19,t,t);
    rect (t*7,t*20,t*2,t);
    rect (t*7,t*21,t,t);
    rect (t*9,t*21,t,t);
    rect (t*6,t*22,t,t);
    rect (t*8,t*22,t*2,t);
    rect (t*10,t*23,t,t);
    rect (t*10,t*24,t,t*2);
    rect (t*4,t*25,t,t);
    rect (t*5,t*26,t,t*3);
    rect (t*9,t*26,t*2,t);
    rect (t*9,t*27,t,t);
    rect (t*10,t*29,t,t*3);
    rect (t*7,t*31,t*3,t);
    //fin ropa
    
    //ojo beige
    fill (255, 255, 224);
    rect (t*7,t*6,t*3,t);
    rect (t*11,t*6,t*2,t);
    rect (t*7,t*7,t*2,t);
    rect (t*10,t*7,t*2,t);
    rect (t*7,t*8,t*2,t);
    rect (t*10,t*8,t*2,t);
    rect (t*7,t*9,t*4,t);
    rect (t*8,t*10,t*2,t);
    
    //ojo rojo 
    fill(139,0,0);
    rect (t*9,t*7,t,t*2);
    rect (t*12,t*7,t,t*2);
    
    popMatrix ();
   }
   
   
   void dibujarshelly () {
    t = 7;
    pushMatrix ();
    translate (0,0);
    noStroke();
    
    // obscuro
    fill(218,112,214);
    rect (t*6,t*0,t*4,t);
    rect (t*4,t,t*8,t);
    rect (t*3,t*2,t*10,t);
    rect (t*2,t*3,t*12,t);
    rect (t,t*4,t*14,t);
    rect (t*0,t*5,t*16,t*4);
    rect (t,t*9,t*14,t*2);
    rect (t*2,t*11,t*12,t);
    rect (t*3,t*12,t*10,t);
    rect (t*4,t*13,t*8,t*2);
    rect (t*5,t*15,t*6,t);
   
    //claro
    fill(216,191,216);
    rect (t*6,t,t*4,t);
    rect (t*4,t*2,t*2,t);
    rect (t*7,t*2,t*2,t);
    rect (t*10,t*2,t*2,t);
    rect (t*3,t*3,t*2,t);
    rect (t*6,t*3,t*4,t*3);
    rect (t*11,t*3,t*2,t);
    rect (t*2,t*4,t,t*7);
    rect (t*4,t*4,t,t*4);
    rect (t*11,t*4,t,t*4);
    rect (t*13,t*4,t,t*7);
    rect (t,t*5,t,t*4);
    rect (t*14,t*5,t,t*4);
    rect (t*5,t*6,t,t*5);
    rect (t*7,t*6,t*2,t*4); 
    rect (t*14,t*6,t,t*4);
    rect (t*10,t*6,t,t*5); 
    rect (t*3,t*8,t,t*4); 
    rect (t*12,t*8,t,t*4); 
    rect (t*5,t*10,t*6,t); 
    rect (t*3,t*11,t*2,t);
    rect (t*6,t*11,t*4,t);
    rect (t*11,t*11,t,t);
    rect (t*4,t*12,t*2,t);
    rect (t*7,t*12,t*2,t);
    rect (t*10,t*12,t*2,t);
    rect (t*6,t*13,t*4,t);
    rect (t*5,t*14,t*6,t);
     popMatrix ();
   }
}
