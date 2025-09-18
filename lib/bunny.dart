import 'pets.dart';

class Bunny extends Pets {
  String favoriteFood; // unique property only for Bunny

  Bunny({
    required String name,
    required String rarity,
    this.favoriteFood = "Carrot", // default value
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(name: name, rarity: rarity, level: level, age: age, hunger: hunger);

  // Bunny’s own action
  void munchCarrot() {
    print("$name munches a $favoriteFood and boosts carrot value by x2.0!");
  }
}
