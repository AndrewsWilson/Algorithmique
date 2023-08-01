void setup(){
  String champDeMine = "*...\n....\n.*..\n...."; //<>//
  String result = solveField(champDeMine);
  println(result);
}


void draw(){
  exit();
}

String solveField(String champDeMine){
  
  String[] tabChampDeMine = split(champDeMine, '\n');
  String result ="";
  int mineCount = 0;
  
for(int y=0;y<tabChampDeMine.length;y++){ //<>//
  for(int x=0; x<tabChampDeMine[y].length(); x++){
    if(tabChampDeMine[y].charAt(x) == '*'){
      result += "*";
    } else {
      mineCount = MineCounter(y, x, tabChampDeMine);
      }
      if(tabChampDeMine[y].charAt(x) != '*'){
        result += str(mineCount);
      }
      mineCount = 0;
  }
      result += "\n";
}
return result;
}

  
int MineCounter(int y, int x, String[]rows){
  int nbMines = 0;
  
  if(isMine(y,x+1, rows)){
    nbMines++;
  }
  if(isMine(y,x-1, rows)){
    nbMines++;
  }

  if(isMine(y+1,x, rows)){
    nbMines++;
  }
  if(isMine(y+1,x+1, rows)){
    nbMines++;
  }
  if(isMine(y+1,x-1, rows)){
    nbMines++;
  }
  if(isMine(y-1,x, rows)){
    nbMines++;
  }
  if(isMine(y-1,x+1, rows)){
    nbMines++;
  }
  if(isMine(y-1,x-1, rows)){
    nbMines++;
  } 
    
  return nbMines;
}

boolean isMine(int y,int x, String[] rows){
  
  if(!OutOfField(x,y,rows)){
    if(rows[y].charAt(x) == '*'){
        return true;
    }
  }

  return false;
}

boolean OutOfField(int x, int y,String[] rows){
   if(y<0){
    return true;
  }
  
  if(y>=rows.length){
    return true;
  }
  
  if(x<0) {
    return true;
  }
  
  if(x>=rows[y].length()) {
    return true;
  }
  
  return false;
}
