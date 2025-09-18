import 'pets.dart';
import 'dog.dart';
import 'bee.dart';
import 'bunny.dart';

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

  print("\n--- Dog (Derived) ---");
  var buddy = Dog(
    name: "Buddy",
    rarity: "Common",
    breed: "Golden Lab",
    level: 2,
    age: 3,
    hunger: 70,
  );
  print(buddy.info());
  buddy.dig();
  buddy.feed(20);

// --- Bunny ---
  print("\n--- Bunny (Derived) ---");
  var flopsy = Bunny(name: "Flopsy", rarity: "Uncommon", favoriteFood: "Lettuce", level: 1, age: 2, hunger: 60);
  print(flopsy.info());
  flopsy.munchCarrot();  // Bunny’s own method

  // --- Bee (Derived) ---
  print("\n--- Bee (Derived) ---");
  var buzz =
      Bee(name: "Buzz", rarity: "Uncommon", level: 3, age: 1, hunger: 90);
  print(buzz.info());
  buzz.buzzAround(); // unique Bee method
}