/*
================
# Fonction permettant d'initialiser le tableau dans lequel les valeurs juste de l'utilisateur seront stockées
================
*/

char[] INITIALISEUR () { 
  
/*
================
# Initialisation tableau vide & attribution valeur à 0 cellules *
================
*/  
char[] voidtab = new char[0];

/*
================
# Définition nb cellules selon valeur fonction "SELECTEUR"
================
*/
for(int i = 0; i < SELECTEUR().length; i++){
  voidtab = append(voidtab, '_');
}
 
 
  return voidtab;
}
