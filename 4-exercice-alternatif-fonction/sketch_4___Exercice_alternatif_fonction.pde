void setup(){
  int[] liste1 = {4, 8, 5, 9, 5, 7, 6};
  int[] liste2 = new int[] {4, 5, 1, 9, 7, 3, 8};
  int[] liste3 = new int[] {9, 5, 7, 9, 4, 4, 4};

  println("Le nombre de fois ou les chiffres sont identique entre L1 & L2 est de : " + COMPTEUR(liste1,liste2) );
  println("Le nombre de fois ou les chiffres sont identique entre L2 & L3 est de : " + COMPTEUR(liste2,liste3) );
}

void draw(){
  exit();
}
