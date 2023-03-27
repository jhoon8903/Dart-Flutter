void main(List<String> args) {
  //instance
  Tesla model3 = Tesla("red", 100);
  Tesla model5 = Tesla("blue", 150);
  Tesla cyberTruck = Tesla("silver", 400);
  Tesla model3LongRange = Tesla.defaultOptions();

  print(model3LongRange.toString());
}

//Class
class Tesla {
  String color;
  int batterySize; // run one kilometer, reduce battery unit

  // constructor class명과 동일하고, Return Type is Class
  Tesla(this.color, [this.batterySize = 100]);

  // named Constructor (forwarding constructor this())
  Tesla.defaultOptions() : this("blue");

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
