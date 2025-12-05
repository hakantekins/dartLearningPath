mixin CanFly {
  void fly() => print('flying high');
}
mixin CanSwim {
  void swim() => print('swimming deep');
}

class Animal {}

class Duck extends Animal with CanFly, CanSwim {}

class Fish extends Animal with CanSwim {}

class Plane with CanFly {}

void main() {
  var duck = Duck();
  duck.fly();
  duck.swim();

  var fish = Fish();
  fish.swim();

  var plane = Plane();
  plane.fly();
}
