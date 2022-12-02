import 'dart:convert';

import 'package:day_01/day_01.dart';
import 'package:test/test.dart';

void main() {
  test('calculatePointsOfMatches', () {
    var input = '''A Y
B X
C Z''';

    var ls = LineSplitter();

    var lines = ls.convert(input);

    expect(calculatePointsOfMatches(lines), 15);
  });

  test('calculatePointsOfMatchesWithNewMethod', () {
    var input = '''A Y
B X
C Z''';

    var ls = LineSplitter();

    var lines = ls.convert(input);

    expect(calculatePointsOfMatches(lines, newMethod: true), 12);
  });
}
