// pets.dart
// this is the base class for all pets
class Pets {
  String name;
  String rarity;
  int _level;
  int _age;
  double _hunger; // hunger is 0–100 (0 = starving, 100 = full)

  Pets({
    required this.name,
    required this.rarity,
    int level = 1,
    int age = 0,
    double hunger = 100,
  })  : _level = level,
        _age = age,
        _hunger = hunger;

  // getter and setter for level
  int get level => _level;
  set level(int value) {
    if (value <= 0) throw ArgumentError("Level must be positive.");
    _level = value;
  }

  // getter and setter for age
  int get age => _age;
  set age(int value) {
    if (value < 0) throw ArgumentError("Age cannot be negative.");
    _age = value;
  }

  // getter and setter for hunger
  double get hunger => _hunger;
  set hunger(double value) {
    if (value < 0 || value > 100) {
      throw ArgumentError("Hunger must be between 0 and 100.");
    }
    _hunger = value;
  }

  // method: feed the pet
  void feed(double food) {
    _hunger += food;
    if (_hunger > 100) _hunger = 100;
    print("$name was fed. Hunger level: $_hunger");
  }

  // method: pet gets older
  void growOlder() {
    _age++;
    print("$name has grown older. Age is now $_age.");
  }

  // method: show pet info as a string
  String info() =>
      "$name (Rarity: $rarity, Level: $_level, Hunger: $_hunger, Age: $_age)";
}

// ---------------- derived classes ----------------

// dog is a pet but has its own extra behavior
class Dog extends Pets {
  String breed;

  Dog({
    required String name,
    required String rarity,
    required this.breed,
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(name: name, rarity: rarity, level: level, age: age, hunger: hunger);

  // unique method for dogs
  void dig() {
    print("$name the $breed digs up a seed from the garden!");
  }

  // override feed so dogs wag tail when eating
  @override
  void feed(double food) {
    print("Dog wags tail happily while eating.");
    super.feed(food);
  }
}

// bunny is a pet with a carrot munching ability
class Bunny extends Pets {
  Bunny({
    required String name,
    required String rarity,
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(name: name, rarity: rarity, level: level, age: age, hunger: hunger);

  void munchCarrot() {
    print("$name munches a carrot and boosts carrot value by x2.0!");
  }
}

// bee is a pet with a buzzing ability
class Bee extends Pets {
  Bee({
    required String name,
    required String rarity,
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(name: name, rarity: rarity, level: level, age: age, hunger: hunger);

  void buzzAround() {
    print("$name buzzes around and increases crop growth by 12.0%!");
  }
}
