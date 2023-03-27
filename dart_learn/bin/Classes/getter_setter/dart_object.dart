import './dart_get_set.dart';

void main(List<String> args) {
  Car newCar = Car();
  print(newCar.wheels);
  newCar.wheels = 8;
  print(newCar.wheels);
}
