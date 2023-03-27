void main(List<String> args) {
  //instance
  Tesla model3 = Tesla();
  Tesla model5 = Tesla(color: "Silver");
  Tesla cyberTruck = Tesla(color: "Red");
  Tesla model3LongRange = Tesla.defaultOptions();
  print(model3);
  print(model3LongRange.toString());
}

//Class
class Tesla {
  String color;
  int batterySize = 100; // run one kilometer, reduce battery unit

  // constructor class명과 동일하고, Return Type is Class
  Tesla({this.color = "white"});

  // named Constructor (forwarding constructor this())
  Tesla.defaultOptions() : this();

  @override
  String toString() {
    return 'Tesla ($color, $batterySize)';
  }
}
