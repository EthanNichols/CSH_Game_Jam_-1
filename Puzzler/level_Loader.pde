
void levelManager() {
  levelLoader();
}

void levelLoader() {
     
  String line[] = loadStrings("levels/level2.txt");
  
  for (int i = 0 ; i < line.length; i++) {
    
    for (int p = 0; p < line[i].length(); p++) {
       char tile = line[i].charAt(p);
       
       if (tile != '0') {createTile(p, i);}
       
       if (tile == '0') {}
       else if (tile == '1') {}
       else if (tile == '2') {createBoxes(p, i);}
       else if (tile == 'g') {setPosition(p, i, 'p');}
       else if (tile == 'G') {setPosition(p, i, 'o');}
       else if (tile == 'y') {setTelePosition(p, i, 0);}
       else if (tile == 'Y') {setTelePosition(p, i, 1);}
       else if (tile == 'h') {setTelePosition(p, i, 2);}
       else if (tile == 'H') {setTelePosition(p, i, 3);}
       else if (tile == 'n') {setTelePosition(p, i, 4);}
       else if (tile == 'N') {setTelePosition(p, i, 5);}
       else if (tile == 'p') {setPlayerPosition(p, i, tile);}
       else if (tile == 'o') {setPlayerPosition(p, i, tile);}
    }
  }
}