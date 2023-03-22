void main() {
  // runtime에 데이터 타입 변환
  Object name =
      'Daniel'; // Object type은 객체 타입으로 사용가능하다. Object? nullsafety 사용 가능한 Object Type
  name = 123;
  print('Object > intger expression name is $name');

  dynamic name1 = 'Daniel'; // dynamic은 사용하지 말자 typeScript 의 any type같은 녀석
  name1 = true;
  print('dynamic > intger expression name1 is $name1');

  const String name2 = 123; // string Type 에 int type 할당 불가능
  const String name2_1 = '123';
  const int name3 = '123'; // int type에 String Type 할당이 불가능
  const int name3_1 = 123;
}
