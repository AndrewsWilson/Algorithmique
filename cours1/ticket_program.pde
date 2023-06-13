void setup(){
int prix = 100;
float[] prixRemiser = new float[0];
int[] ages = new int[] {65, 64, 18, 6};
String[] jours = new String[] {"jeudi", "lundi", "samedi", "mercredi", };

for (int i = 0; i < ages.length; i++) { //<>//
 prixRemiser = append(prixRemiser, reduc(ages[i], jours[i]) );
}

println("Prix hors remise : " + prix);
for (int i = 0; i < ages.length; i++) {
  println("Le prix d'une personne de : " + ages[i] + " " + "est de :" + " " + prixRemiser[i]);
}


}
void draw(){
  exit();
}
