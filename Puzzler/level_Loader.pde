
int levelNumber = 1;

void levelManager() {
  levelLoader("levels/level1.txt");
}

void levelLoader(String level) {
     
  if (levelNumber <= 10) {
  String line[] = loadStrings(level);
  
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
  } else {
    gamestate = "Youwin";
  }
}

void nextLevel() {
  levelNumber++;
  resetTiles();
  resetBoxes();
  levelLoader("levels/level" + levelNumber + ".txt");
}

void youWin() {
  textSize(50);
  fill(0);
  text("Congrats", width / 2 - textWidth("Congrats") / 2, height - 500);
  text("You", width / 2 - textWidth("You") / 2, height - 350);
  text("Both", width / 2 - textWidth("Both") / 2, height - 200);
  text("Win!", width / 2 - textWidth("Win!") / 2, height - 50);
}