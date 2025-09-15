class Pet {
  String name;
  String rarity;
  int _level;
  int _age;
  double _hunger; // 0–100 (0 = starving, 100 = full)

  Pet({
    required this.name,
    required this.rarity,
    int level = 1,
    int age = 0,
    double hunger = 100,
  })  : _level = level,
        _age = age,
        _hunger = hunger;

  // Getter & Setter for level
  int get level => _level;
  set level(int value) {
    if (value <= 0) throw ArgumentError("Level must be positive.");
    _level = value;
  }

  // Getter & Setter for age
  int get age => _age;
  set age(int value) {
    if (value < 0) throw ArgumentError("Age cannot be negative.");
    _age = value;
  }

  // Getter & Setter for hunger
  double get hunger => _hunger;
  set hunger(double value) {
    if (value < 0 || value > 100) {
      throw ArgumentError("Hunger must be between 0 and 100.");
    }
    _hunger = value;
  }

  // Method 1: feed pet
  void feed(double food) {
    if (food <= 0) {
      print("$name cannot eat zero or negative food.");
      return;
    }
    _hunger += food;
    if (_hunger > 100) _hunger = 100;
    print("$name was fed. Hunger level: $_hunger");
  }

  // Method 2: grow older
  void growOlder() {
    _age++;
    print("$name has grown older. Age is now $_age.");
  }

  String info() =>
      "$name (Rarity: $rarity, Level: $_level, Hunger: $_hunger, Age: $_age)";
}
