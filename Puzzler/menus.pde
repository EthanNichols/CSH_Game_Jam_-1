
void mainMenu() {
  
  textSize(50);
  fill(200);
  rect(width / 2 - textWidth("Play Game") / 2 - 5, height / 3 - 45, textWidth("Play Game") + 5, 55);
  rect(width / 2 - textWidth("Exit") / 2 - 5, height - height / 3 - 45, textWidth("Exit") + 5, 55);
  
  fill(0);
  text("Play Game", width / 2 - textWidth("Play Game") / 2, height / 3);
  text("Exit", width / 2 - textWidth("Exit") / 2, height - height / 3);
  
  textSize(15);
  text("Press 'R' to reset the map", 20, height - 80);
  text("Press 'P' to pause the game", 20, height - 60);
  text("Player 1 use the arrow keys to move", 20, height - 40);
  text("Player 2 use WASD keys to move", 20, height - 20);
}

void pauseMenu() {
  textSize(50);
  fill(200);
  rect(width / 2 - textWidth("Resume Game") / 2 - 5, height / 3 - 45, textWidth("Resume Game") + 5, 55);
  rect(width / 2 - textWidth("Exit") / 2 - 5, height - height / 3 - 45, textWidth("Exit") + 5, 55);
  
  fill(0);
  text("Resume Game", width / 2 - textWidth("Resume Game") / 2, height / 3);
  text("Exit", width / 2 - textWidth("Exit") / 2, height - height / 3);
  
  textSize(15);
  text("Press 'R' to reset the map", 20, height - 80);
  text("Press 'P' to pause the game", 20, height - 60);
  text("Player 1 use the arrow keys to move", 20, height - 40);
  text("Player 2 use WASD keys to move", 20, height - 20);
}

void YouWin() {
  
}

void MenuPressed() {
  if (mouseX >= width / 2 - textWidth("Play Game") / 2 - 5 &&
  mouseX <= width / 2 - textWidth("Play Game") / 2 - 5 + textWidth("Play Game") + 5 &&
  mouseY >= height / 3 - 45 &&
  mouseY <= height / 3 - 45 + 55) {
    
    gamestate = "game";
    
  } else if (mouseX >= width / 2 - textWidth("Exit") / 2 - 5 &&
  mouseX <= width / 2 - textWidth("Exit") / 2 - 5 + textWidth("Exit") + 5 &&
  mouseY >= height - height / 3 - 45 &&
  mouseY <= height - height / 3 - 45 + 55) {
    exit();
  }
}