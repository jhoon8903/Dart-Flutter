void main(List<String> args) {
  int water = 0;

  while (water < 100) {
    water++;
    print('inWater $water');
  }
  print('Max water tank $water Liter');

  int number = 1;
  int result = 0;
  while (number <= 10) {
    print('in while $number');
    result += number;
    number++;
    print('result $result');
  }
  print('Max Result is $result');
}
