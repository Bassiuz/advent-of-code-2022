import 'dart:convert';
import 'dart:io';

import 'package:day_01/day_01.dart';

void main() async {
  final file = File('bin/input.txt');
  var data = <String>[];
  var lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.
  try {
    await for (var line in lines) {
      data.add(line);
    }
  } catch (e) {
    print('Error: $e');
  }

  print('most calories carried" ' + findMostCaloriesForInput(data).toString());
  print('most calories carried for top 3: ' + findMostCaloriesForTop3OfInput(data).toString());
}
