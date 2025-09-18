import 'pets.dart';

class Bee extends Pets {
  double honeyCapacity; // unique property only for Bee

  Bee({
    required String name,
    required String rarity,
    this.honeyCapacity = 10.0, // default value
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(
            name: name, rarity: rarity, level: level, age: age, hunger: hunger);

  // Bee’s own action
  void buzzAround() {
    print(
        "$name Every ~25m, flies to a nearby fruit and pollinates it, applying the Pollinated mutation. "
        "It can carry up to $honeyCapacity units of honey.");
  }
}
