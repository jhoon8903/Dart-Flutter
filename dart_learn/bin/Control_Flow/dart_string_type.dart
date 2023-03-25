void main() {
  var stringBuffer = StringBuffer();
  String myName = 'Daniel'; // unicode-table.com
  print('myName\'s UniCode = ${myName.codeUnits}');

  var sentance = 'My name is ';
  // sentance += myName;
  // sentance += ' Lee'; // concat nation
  print('not Use StringBuffer() is $sentance');

  stringBuffer.write(sentance);
  stringBuffer.write(myName);
  stringBuffer.write(' Lee');
  print(
      'use to StringBuffer is \u{5455} ${stringBuffer.toString()}'); // concat nation 작업이 많다면 stringBuffer 로 작업하는 것이 리소스를 적게 잡아먹는다.

  var concat = '''My name is \u{1F436}
My name is \u{1F42A}
My name is \u{1F439}''';
  print('concat && unicode && multi_line Show \n$concat');
}
