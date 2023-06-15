/*
- Fonction permettant de séléctionner aléatoirement un mot dans un fichier .txt & de le stocker dans un tableau(liste)
*/


char[] SELECTEUR() {
/*
================
# Séléction aléatoire d'un mot dans un fichier .txt
================
*/
  String[] word_list = loadStrings("liste_mots.txt");
/*
================
# Stockage valeur dans une variable "word"
================
*/
  String word = word_list[int(random(word_list.length))];
/*
================
# Création tableau vide à 0 cellules
================
*/
  char[] list_char = new char[0];
/*
================
# Incrémentation de chaques lettre du mot dans un tableau char[]
================
*/
  for(int i = 0; i < word.length(); i++){ //<>//
    list_char = append(list_char, word.charAt(i));
  }
  
  return list_char;
}
