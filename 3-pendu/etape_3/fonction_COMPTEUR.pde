int COMPTEUR(char lettre, char[] aDeviner) {
/*
================
# Initialisation & affection valeur sur variable "compteur"
================
*/
  int compteur = 0;
/*
================
# Boucle for avec index -> parcourir le tableau, si lettre == valeur index tableau incrémentation de compteur
================
*/  
  for (int i = 0; i < aDeviner.length; i++){
    if(lettre == aDeviner[i]){
      compteur++;
    }
  }
/*
================
# retourne nb fois lettre présente dans mot aDeviner
================
*/    
  return compteur;
}
