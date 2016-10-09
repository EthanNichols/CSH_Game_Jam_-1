
void levelManager() {
  levelLoader();
}

void levelLoader() {
     
  String line[] = loadStrings("levels/level1.txt");
  
  for (int i = 0 ; i < line.length; i++) {
    
    for (int p = 0; p < line[i].length(); p++) {
       char tile = line[i].charAt(p);
       
       if (tile != '0') {createTile(p, i);}
       
       if (tile == '0') {}
       else if (tile == '1') {}
       else if (tile == '2') {}
       else if (tile == '3') {}
       else if (tile == '4') {}
       else if (tile == '5') {}
    }
  }
}