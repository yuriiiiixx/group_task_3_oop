import 'pets.dart';
import 'dog.dart';
import 'bee.dart';

void main() {
  print("--- Base Pet ---");

  // create a generic pet object
  var genericPet = Pets(
    name: "Paopao",
    rarity: "Common",
    level: 1,
    age: 1,
    hunger: 80,
  );

  // print the info of the pet
  print(genericPet.info());

  // feed the pet and see hunger go up
  genericPet.feed(10);

  // make the pet grow older
  genericPet.growOlder();

  // --- Bee (Derived) ---
  print("\n--- Bee (Derived) ---");
  var buzz =
      Bee(name: "Buzz", rarity: "Uncommon", level: 3, age: 1, hunger: 90);
  print(buzz.info());
  buzz.buzzAround(); // unique Bee method
}
