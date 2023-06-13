float reduc(int age, String jour) {

/*remise */  int remise;
/*prix remisé */ float x;
int prix = 100;

if(age >= 65){ //<>// //<>//
  if( jour == "mardi" || jour == "jeudi"){
   remise = 40;
  }
  else{
 remise = 30;
  }
}

else if(age >= 18 ){
  if(jour == "samedi" || jour =="dimanche") {
    remise  = 40;
  }
  else {
    remise  = 0;
  }
}

else if(age > 8 ) {
  remise  = 40;
}

else {
  remise  = 50;
}

x = prix - ((prix * remise) / 100);
return x;

  
}
