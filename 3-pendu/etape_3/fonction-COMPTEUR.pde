int COMPTEUR(char lettre, char[] aDeviner) {
  int compteur = 0;
  
  for (int i = 0; i < aDeviner.length; i++){
    if(lettre == aDeviner[i]){
      compteur++;
    }
  }
  return compteur;
}
