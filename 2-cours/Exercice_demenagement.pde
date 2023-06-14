void setup(){
  int i = 0;
  int nbCartonA = 34;
  int nbCartonB = 0;
  int pieceEnCours = 0;
  int chargeMax = 150;
  int carton = 0;
  int numeroPoidCarton = 0;
  float[] poidsCartons = new float[34];
  int[] capaciteBureaux = {3, 4, 2, 1, 3, 2, 5, 2, 2, 1, 1, 3, 3, 3, 4};
  int[] cartonsStocke = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  println("=======================================================");
  println("Arriver à l'ancien local");
  println("=======================================================");
  
  while (i< 34){
    poidsCartons[i] = random(15,30);
    i++; 
  }
  i = 0;
  
  while( nbCartonA > 0){ //<>//
     int chargementCamion = 0;  
     float chargeActuel = 0;
     chargeActuel = 0;
     println("chargement du camion");
     println("=======================================================");
     

     while(nbCartonA >0 && (chargeActuel + poidsCartons[numeroPoidCarton]) < chargeMax && chargementCamion < 9){
       chargeActuel += poidsCartons[numeroPoidCarton];
       nbCartonA --;
       chargementCamion++;
       numeroPoidCarton++;
     }

     
     
     println("voyage du camion avec : " + chargementCamion + " cartons");
     println("Déchargement du camion...");
     println("=======================================================");
     while(chargementCamion > 0){
       chargementCamion--;
       nbCartonB++;
       cartonsStocke[pieceEnCours]++;
       pieceEnCours++;
       if(pieceEnCours > 14){
         pieceEnCours = 0;
       }
       while(capaciteBureaux[pieceEnCours] == cartonsStocke[pieceEnCours]){
         pieceEnCours++;
       }
     } 
     
     println("Retour au local");
     println("=======================================================");
  }
  int couloir = 0;
  couloir = cartonsStocke[5];
  cartonsStocke[5] = cartonsStocke[10];
  cartonsStocke[10] = couloir;
  
  pieceEnCours = 0;
  println("Déménagement terminé ");

  println("Capacitée des pièces :");
  while(pieceEnCours < 15){
    print( " " + capaciteBureaux[pieceEnCours]);
    pieceEnCours++;
  }
  
  println(" ");
  println("Nb carton par pièces : ");
  pieceEnCours = 0;
  while(pieceEnCours <15){
    print(" " + cartonsStocke[pieceEnCours]);
    pieceEnCours++;
  }
  
}

void draw() {
exit(); }
