void setup(){
char[] aDeviner = new char[]{'c' ,'a' ,'m' ,'i' ,'o' ,'n'};
char[] motUtilisateur = new char[]{'_' ,'_' ,'_' ,'_' ,'_' ,'_' };
boolean gagner = false;

while( gagner == false ){ //<>//
  char lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
  
  for(int positionPendu = 0; positionPendu < aDeviner.length; positionPendu++){
    if(lettreUtilisateur == aDeviner[positionPendu]){
      motUtilisateur[positionPendu] = lettreUtilisateur;
    }
  }
  
  println("\n");
  for(int i= 0; i < aDeviner.length; i++){
    print(motUtilisateur[i]);
  }
  gagner = COMPARATEUR(aDeviner, motUtilisateur);
}

println("gagner !") ;

 //<>//

}

void draw(){
  exit();
}
