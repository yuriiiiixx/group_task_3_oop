class Pets {
  String name;      // pet's name
  String rarity;    // how rare the pet is (Common, Rare, etc.)
  int _level;       // private field, pet's level
  int _age;         // private field, pet's age
  double _hunger;   // private field, hunger (0-100, 100 = full)

  // constructor, used to make a pet object
  Pets({
    required this.name,
    required this.rarity,
    int level = 1,   // default is level 1
    int age = 0,     // default age is 0
    double hunger = 100, // default hunger is full (100)
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

  // method to feed the pet
  void feed(double food) {
    if (food <= 0) {
      print("$name cannot eat zero or negative food.");
      return;
    }
    _hunger += food;
    if (_hunger > 100) _hunger = 100; // cap hunger to max 100
    print("$name was fed. Hunger level: $_hunger");
  }

  // method to increase the pet's age
  void growOlder() {
    _age++;
    print("$name has grown older. Age is now $_age.");
  }

  // method that shows pet details
  String info() =>
      "$name (Rarity: $rarity, Level: $_level, Hunger: $_hunger, Age: $_age)";
}
