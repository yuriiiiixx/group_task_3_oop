import 'pets.dart';

class Dog extends Pets {
  String breed; // extra property

  Dog({
    required String name,
    required String rarity,
    required this.breed,
    int level = 1,
    int age = 0,
    double hunger = 100,
  }) : super(
         name: name,
         rarity: rarity,
         level: level,
         age: age,
         hunger: hunger,
       );

  // unique method
  void dig() {
    print("$name the $breed digs up a seed from the garden!");
  }

  // override feed method
  @override
  void feed(double food) {
    print("Dog wags tail happily while eating.");
    super.feed(food);
  }
}
