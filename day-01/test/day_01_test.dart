import 'dart:convert';

import 'package:day_01/day_01.dart';
import 'package:test/test.dart';

void main() {
  test('findMostCalories', () {
    var input = '''1000
2000
3000

4000

5000
6000

7000
8000
9000

10000''';

    var ls = LineSplitter();

    var lines = ls.convert(input);

    expect(findMostCaloriesForInput(lines), 24000);
  });

  test('findMostCaloriesForTop3', () {
    var input = '''1000
2000
3000

4000

5000
6000

7000
8000
9000

10000''';

    var ls = LineSplitter();

    var lines = ls.convert(input);

    expect(findMostCaloriesForTop3OfInput(lines), 45000);
  });
}
