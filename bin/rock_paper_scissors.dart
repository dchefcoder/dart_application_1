import 'dart:io';
import 'dart:math';

// Simple Command line Game: Rock, Paper and Scissors
enum Move { rock, paper, scissors }

void main() {
  final randomGenerator = Random();
  while (true) {
    print('Welcome to Rock, Paper and Scissors Game');
    stdout.write('Enter your choice Rock, Paper, Scissors? (r/p/s): ');
    final choice = stdin.readLineSync();
    if (choice == 'r' || choice == 'p' || choice == 's') {
      var playerMove;
      if (choice == 'r') {
        playerMove = Move.rock;
      } else if (choice == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      print('You played $playerMove');
      final random = randomGenerator.nextInt(3);
      final computerMove = Move.values[random];
      print('AI played $computerMove');
      if (playerMove == computerMove) {
        print('It\'s a draw🤞');
        stdout.write('Do you wish to continue? (y/n) ');
        final continuity = stdin.readLineSync();
        if (continuity == 'y') {
          continue;
        } else {
          break;
        }
      } else if (playerMove == Move.rock && computerMove == Move.scissors ||
          playerMove == Move.paper && computerMove == Move.rock ||
          playerMove == Move.scissors && computerMove == Move.paper) {
        print('Congratulation you win the game!!🎉🎉🎉');
        stdout.write('Do you wish to continue? (y/n) ');
        final continuity = stdin.readLineSync();
        if (continuity == 'y') {
          continue;
        } else {
          break;
        }
      } else {
        print('So sad you lose the game😌');
        stdout.write('Do you wish to continue? (y/n) ');
        final continuity = stdin.readLineSync();
        if (continuity == 'y') {
          continue;
        } else {
          break;
        }
      }
    } else if (choice == 'q') {
      print('You have quit the game😉');
      print('Hope you have some fun!😎');
      break;
    } else {
      print('You input an invalid choice🤷‍♂️');
      print('Please try again😜');
      continue;
    }
  }
}
