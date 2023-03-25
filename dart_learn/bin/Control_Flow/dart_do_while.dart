void main(List<String> args) {
  int number = 0;
  int result = 0;

  do {
    print('do in number $number');
    number++;
    if (number > 7) {
      break;
    }
    result += number;
    print('do in result $result');
  } while (true);
  print('do outside result $result');
}
