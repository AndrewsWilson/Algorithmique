void setup(){
/*char[] aDeviner = new char[]{'c' ,'a' ,'m' ,'i' ,'o' ,'n'};*/
char[] aDeviner = SELECTEUR();
char[] motUtilisateur = INITIALISEUR();
boolean gagner = false;
int nbFois = 10;

/*
================
# Boucle while :  TANTQUE chance > 1 && gagner == fasle jeux continu SINON jeux terminé
================
*/
while( nbFois> 1 && gagner == false ){
  char lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
/*
================
# Boucle for : comparer la lettre saisie aux cellules à la list aDeviner
================
*/  
  for(int positionPendu = 0; positionPendu < aDeviner.length; positionPendu++){
    if(lettreUtilisateur == aDeviner[positionPendu]){
      motUtilisateur[positionPendu] = lettreUtilisateur;
    }
  }
  println("\n");
/*
================
# condition -> si fonction compteur retourne > 0 affiche nb fois lettre présente SINON retourne lettre absente
================
*/  
  if(COMPTEUR(lettreUtilisateur, aDeviner) > 0 ){
    println("Cette lettre est : " + COMPTEUR(lettreUtilisateur, aDeviner) +  "fois présent");
  }
  else{
    print("cette lettre n'est pas dans le mot");
    nbFois--;
     println("\nNombre de chances restantes : " + nbFois);
  }
  print("\n[ ");
/*
================
# boucle for -> affiche chaque cellule du tableau dans la console
================
*/ 
  for(int i= 0; i < aDeviner.length; i++){
    print(motUtilisateur[i]);
  }
  print(" ]");
  
  gagner = COMPARATEUR(aDeviner, motUtilisateur);

}
/*
================
# condition -> si condition reste FALSE jeux perdu, SINON jeux gagné
================
*/ 
if(gagner == false){
  println("Dommage perdu !") ;
}
else {
  println("Bien jouer gagner !") ;
}
 //<>//
}

void draw(){
  exit();
}
