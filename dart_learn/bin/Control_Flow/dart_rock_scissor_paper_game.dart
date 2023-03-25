import 'dart:math';

void main(List<String> args) {
  // 0 is ROCK
  // 1 is SCISSOR
  // 2 is PAPER
  int computer = Random().nextInt(3);
  int player = Random().nextInt(3);

  switch (player) {
    case 0:
      if (player == computer) {
        print('Drow \nP:ROCK - C:ROCK');
      } else if (computer == 1) {
        print('Player Win \nP:Rock - C:SCISSOR');
      } else {
        print('Computer Win \nP:Rock - C:PAPER');
      }
      break;
    case 1:
      if (player == computer) {
        print('drow \nP:SCISSOR - C:SCISSOR');
      } else if (computer == 2) {
        print('Player Win \nP:SCISSOR - C:PAPER');
      } else {
        print('Computer Win \nP:SCISSOR - C:ROCK');
      }
      break;
    case 2:
      if (player == computer) {
        print('Drow \nP:PAPER - C:PAPER');
      } else if (computer == 0) {
        print('Player Win \nP:PAPER - C:ROCK');
      } else {
        print('Computer Win \nP:PAPER - C:SCISSOR');
      }
      break;
  }
  print('Case $player - Game Over');
}
