void setup(){
char[] aDeviner = new char[]{'c' ,'a' ,'m' ,'i' ,'o' ,'n'};
char[] motUtilisateur = new char[]{'_' ,'_' ,'_' ,'_' ,'_' ,'_' };
boolean gagner = false;
int nbFois = 10;


while( nbFois> 1 && gagner == false ){ //<>//
  char lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
  
  for(int positionPendu = 0; positionPendu < aDeviner.length; positionPendu++){
    if(lettreUtilisateur == aDeviner[positionPendu]){
      motUtilisateur[positionPendu] = lettreUtilisateur;
    }
  }
  println("\n");
  if(COMPTEUR(lettreUtilisateur, aDeviner) > 0 ){
    println("Cette lettre est : " + COMPTEUR(lettreUtilisateur, aDeviner) +  "fois présent");
  }
  else{
    print("cette lettre n'est pas dans le mot");
  }
  print("\n");
  for(int i= 0; i < aDeviner.length; i++){
    print(motUtilisateur[i]);
  }
  
  gagner = COMPARATEUR(aDeviner, motUtilisateur);
  nbFois--;
  println("\nNombre de chances restantes : " + nbFois);
}

if(gagner == false){
  println("Dommage perdu !") ;
}
else {
  println("Bien jouer gagner !e") ;
}



 //<>//

}

void draw(){
  exit();
}
