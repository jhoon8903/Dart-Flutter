void main(List<String> args) {
  // for loop
  int result = 0;
  for (int i = 0; i <= 10; i++) {
    print('I is $i'); // Break Point
    result += i;
    print('for loop result is $result');
  }

  // for in loop
  String myName = 'Daniel';
  for (var char in myName.runes) {
    print('for in char UniCode is $char');
    print('for in char CharCode is ${String.fromCharCode(char)}');
  }

  //for each
  print('for.Each');
  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  num forEachResult = 0;
  list.forEach((number) {
    forEachResult += number;
    print(forEachResult);
  });
  // for each arrow function
  list.forEach((number) => forEachResult += number);
  print(forEachResult);
}
