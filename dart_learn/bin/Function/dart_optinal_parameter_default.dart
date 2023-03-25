void main(List<String> args) {
  String result = myNameInSentence('Daniel', 'Lee',
      middleName: 'none',
      age: 35,
      birth:
          1989); // 옵셔널 파라메터값을 사용할 때 함수에 {}를 사용하고, 해당 리절트에 key: value 옵셔널 값 할당 가능
  print(result);
}

// String myNameInSentence(String lastName, String givenName,[String? middleName]) {
String myNameInSentence(
  String lastName,
  String givenName, {
  String middleName = '',
  int age = 0,
  int birth = 0,
}) {
  return "my Information is $lastName $middleName $givenName $birth, $age";
}
