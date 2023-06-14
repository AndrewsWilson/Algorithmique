void setup(){
char aDeviner = 'f';
char lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);

while(lettreUtilisateur != aDeviner){
  println("Vous avez taper : " + lettreUtilisateur + " Mauvaise réponde, réessayez..");
  lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
}
println("Félicitation, la lettre a deviner étais bien : "+ aDeviner);
}

void draw(){
  exit();
}
