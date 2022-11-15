// Importing core libraries location ...\flutter\bin\cache\dart-sdk\lib\collection
import 'dart:math';

// Importing libraries from external packages
import 'package:sqflite/sqflite.dart';

// Importing files
import 'path/to/my_other_file.dart';

class Sample {
  void mainTest() {
    // Variables
    var name = 'Voyager I';
    var year = 1994;
    var antennaDiameter = 3.7;
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Nepturn'];
    var image = {
      'tage': ['saturn'],
      'url': '//path/to/saturn.jpg'
    };

    // Control flow statements
    if (year > 2001) {
      print('21st century');
    } else if (year >= 1901) {
      print('20th century');
    }

    for (final object in flybyObjects) {
      print(object);
    }

    for (int month = 1; month < 13; month++) {
      print(month);
    }

    // Functions
    var result = fibonacci(20);

    print(result);

    flybyObjects.where((w) => w.contains('turn')).forEach(print);

    var p = Planet.mercury;
    var planetName = p.name;
    if (p.isGiant) print('Planet $planetName is not a "giant planet".');
  }

  // Functions
  int fibonacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
