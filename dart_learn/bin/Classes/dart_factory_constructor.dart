void main(List<String> args) {
  Car.display = Car();
}

class Car {
  String color;
  static Car? display;
  Car({this.color = 'white'});
  factory Car.factory(String? clr) {
    // return 해준다.
    // factory 는 flexibility 하다.
    if (clr == 'black' || clr == 'white') {
      return Car();
    }
    return Car();
  }
  //sub class
  factory Car.truck() {
    return Truck();
  }
  factory Car.displayIfAvaliable() {
    return display ?? Car();
  }
}

class Truck extends Car {
  Truck();
}
