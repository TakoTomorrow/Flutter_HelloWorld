// Classes
class Spacecraft {
  // 名稱
  String name;
  // 發射日期
  DateTime? launchDate;
  // 發射年分。Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor
  Spacecraft(this.name, this.launchDate);

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  void describe() {
    print('Spacecraft: $name');
    // 因為 this.launchDate 被其他Property引用，因此類型無法晉升。
    var launchDate = this.launchDate;

    if (launchDate != null) {
      // operator ~/ 整數除法結果為整數，忽略餘數
      var years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years year ago)');
    } else {
      print('Unlaunched');
    }
  }
}

// Enum
enum PlanetType { terrestrial, gas, ice }

/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  // 列舉的成員
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false),
  //...
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  nepturn(planetType: PlanetType.ice, moons: 27, hasRings: true);

  // Constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  final PlanetType planetType;

  final int moons;

  final bool hasRings;

  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

// Inheritance
class Orbiter extends Spacecraft {
  Orbiter(super.name, super.launchDate);
}
