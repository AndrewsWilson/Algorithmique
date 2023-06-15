boolean COMPARATEUR (char[] aDeviner, char[] motUtilisateur) {
/*
================
# Initialisation & attribution du boolean = true
================
*/
  boolean rep = true;
/*
================
# Boucle while avec condition si aDeviner != motUtilisateur renvoie un false
================
*/
  int i = 0;
  while(i <  aDeviner.length){
    if (aDeviner[i] != motUtilisateur[i]) {
      rep = false;
      break;
    }
    i = i +1;
  }
/*
================
# Si retourne true - > stop la boucle (while) du programme principal
================
*/  
  
  return rep;
}
