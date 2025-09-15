# oopt3

A new Flutter project.
# Grow a Garden Pets


This is a simple Dart class that demonstrates encapulation and inheritance using pets inspired by gorw a garden. Each pets has an attribute like name, rarity, level, hunger, and age. Derived pets (Dog, Bunny, Bee) will have a unique abilities on top of the base class


## Features


Base class Pet with:

private fields (_level, _age, _hunger)

getters/setters with validation

methods: feed() and growOlder()


Derived pets with unique methods:

 Dog → digSeed(), overrides feed()

 Bunny → eatCarrot()

 Bee → pollinate()

## How to Run


1. Make sure you have Dart installed.


2. Clone or download this project.


3. In terminal, run:

dart run lib/main.dart


# Sample Output

--- Base Pet ---
Generic Pet (Rarity: Common, Level: 1, Hunger: 80.0, Age: 1)
Generic Pet was fed. Hunger level: 90.0
Generic Pet has grown older. Age is now 2.

--- Dog (Derived) ---
Buddy (Rarity: Common, Level: 2, Hunger: 70.0, Age: 3)
Buddy the Golden Lab digs up a seed from the garden!
Dog wags tail happily while eating.
Buddy was fed. Hunger level: 90.0

--- Bunny (Derived) ---
Flopsy (Rarity: Uncommon, Level: 1, Hunger: 60.0, Age: 2)
Flopsy munches a carrot and boosts carrot value by x2.0!

--- Bee (Derived) ---
Buzz (Rarity: Rare, Level: 3, Hunger: 90.0, Age: 1)
Buzz buzzes around and increases crop growth by 12.0%!

