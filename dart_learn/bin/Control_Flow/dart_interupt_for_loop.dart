void main(List<String> args) {
  int result = 0;
  for (int i = 0; i <= 10; i++) {
    print('I is $i'); // Break Point
    result += (i == 5) ? 0 : i;
    // in (i == 5){
    //  continue;
    // }
    // result += i;
    print('result is $result');
  }
}
