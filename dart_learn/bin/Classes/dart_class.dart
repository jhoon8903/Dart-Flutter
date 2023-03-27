void main(List<String> args) {
  //instance
  Tesla model3 = Tesla("red");
  Tesla model5 = Tesla("blue");
  Tesla cyberTruck = Tesla("silver");
  Tesla model3LongRange = Tesla('white');
  // print('model 3 color is ${model3.color}');
  // print('model 5 color is ${model5.color}');
  // print('cyberTruck color is ${cyberTruck.color}');
  // print('model3LongRange color is ${model3LongRange.color}');

  // model3.batterySize = 100;
  // model3.color = 'black';

  // print(
  //     'model 3 color is ${model3.color} BatterySize is ${model3.batterySize}');
  // print(model3.toString());
  // print(model5.toString());
  // print(cyberTruck.toString());
  // print(model3LongRange.toString());
  // model3.hornTheCar();
  print(model3.batterySize);
  model3.runBattery(10);
  print(model3.batterySize);
}

//Class
class Tesla {
  String color = "white";
  int batterySize = 100; // run one kilometer, reduce battery unit

  // constructor
  Tesla(String selectedColor) {
    color = selectedColor;
  }

  //override is 'string representation of this object'.
  @override
  String toString() {
    return 'Tesla ($color, $batterySize)';
  }

  void hornTheCar() {
    print('빵');
  }

  void runBattery(int distance) {
    batterySize = batterySize - distance;
  }
}
