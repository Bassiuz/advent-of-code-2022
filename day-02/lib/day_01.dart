int calculatePointsOfMatches(games, {newMethod = false}) {
  var points = 0;
  for (String game in games) {
    final plays = game.split(' ');
    final opponent = plays[0];
    var you = plays[1];
    if (newMethod) {
      you = getMoveForTactic(you, opponent);
    }

    points += calculateResultsOfGame(opponent, you);
  }
  return points;
}

int calculateResultsOfGame(opponent, you) {
  var scoreForShape = you == 'X'
      ? 1
      : you == 'Y'
          ? 2
          : 3;
  var gameScore = (opponent == 'A' && you == 'X' || opponent == 'B' && you == 'Y' || opponent == 'C' && you == 'Z')
      ? 3
      : (opponent == 'A' && you == 'Y' || opponent == 'B' && you == 'Z' || opponent == 'C' && you == 'X')
          ? 6
          : 0;

  return gameScore + scoreForShape;
}

String getMoveForTactic(tactic, opponent) {
  var you;

  switch (tactic) {
    case 'X': //lose
      you = opponent == 'A'
          ? 'Z'
          : opponent == 'B'
              ? 'X'
              : 'Y';
      break;
    case 'Y': //draw
      you = opponent == 'A'
          ? 'X'
          : opponent == 'B'
              ? 'Y'
              : 'Z';
      break;
    case 'Z': //win
      you = opponent == 'A'
          ? 'Y'
          : opponent == 'B'
              ? 'Z'
              : 'X';
      break;
  }

  return you;
}
