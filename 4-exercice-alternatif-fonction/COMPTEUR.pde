int COMPTEUR(int[] tabA, int[] tabB) {
  int nbre = 0;
  
  for(int i = 0; i < tabA.length; i++){
    if(tabA[i] == tabB[i]){
      nbre++;
    }
  }
  return nbre;
}
