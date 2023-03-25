void main() {
  bool yes = true;
  print('yes is $yes');
  print('!yes is ${!yes}');
  bool no = false;
  print('no is $no');
  print('!no is ${!no}');

  bool yesOrNot = (3 <= 2);
  print('yesOrNot is $yesOrNot');

  int myAge = 34;
  int myYear = 1989;
  print(myAge != myYear || yes != no);
}
