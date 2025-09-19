import 'pets.dart';
import 'dog.dart';

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
}
