import 'dart:math';

int findMostCaloriesForInput(var lines) {
  return getAllCaloriesForInput(lines).reduce(max);
}

List<int> getAllCaloriesForInput(var lines) {
  var data = <int>[];
  var current = 0;
  for (var line in lines) {
    if (line.isEmpty) {
      data.add(current);
      current = 0;
    } else {
      current += int.parse(line);
    }
  }
  data.add(current);

  return data;
}

int findMostCaloriesForTop3OfInput(var lines) {
  var totalList = getAllCaloriesForInput(lines);
  totalList.sort();
  return totalList.sublist(totalList.length - 3).reduce((a, b) => a + b);
}
