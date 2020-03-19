import 'dart:math';

abstract class Hero{

  final String _name;
  Hero(this._name);
  String helpPersonInNeed() => '$_name is helping a person in need!';
  Point move();
  int attack();

}


class Hulk extends Hero with Swimming {
  Hulk(String name) : super(name);

  @override
  int attack() {
    // TODO: implement attack
    print("Hero Can Attack 10");
    return null;
  }

  @override
  Point<num> move() {
    // TODO: implement move
    print("Hero Can Move 10");
    return null;
  }

}

class IronMan extends Hero with Flying{
  IronMan(String name) : super(name);

  @override
  int attack() {
    // TODO: implement attack
    print("Hero Can Attack 8");
    return null;
  }

  @override
  Point<num> move() {
    // TODO: implement move
    print("Hero Can Move 8");
    return null;
  }

}



mixin Flying{
  void fly(){
    print("Hero can fly");
  }
}

mixin Swimming{
  void swim(){
    print("Hero Can Swim");
  }
}