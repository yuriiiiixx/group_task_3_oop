import 'pets.dart';

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
}
