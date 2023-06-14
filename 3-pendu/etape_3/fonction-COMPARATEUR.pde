boolean COMPARATEUR (char[] aDeviner, char[] motUtilisateur) {
  int i = 0;
  boolean rep = true;
  
  while(i <  aDeviner.length){
    if (aDeviner[i] != motUtilisateur[i]) {
      rep = false;
      break;
    }
    i = i +1;
  }
  
  
  return rep;
}
