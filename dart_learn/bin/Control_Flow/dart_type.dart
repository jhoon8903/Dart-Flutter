void main() {
  bool isFemale = true;
  String text = 'hello world';
  print('isFemale:$isFemale');
  print('text is ${text.runtimeType} Type');
  print('');

  int intger = 10;
  double decimal = intger.toDouble();
  int intger1 = decimal.toInt();
  var multiPly = decimal * intger1;
  print('intger1 is $intger1 type is ${intger1.runtimeType}');
  print('decimal is $decimal type is ${decimal.runtimeType}');
  print('multiPlyRound is ${multiPly.round()}');
  print('multiPlyDouble is ${multiPly.toDouble()}');

  double priceAnApple = 5.3;
  var totalPrice = priceAnApple * 5;
  // 얼마를 내야하는지 써보자
  print('totalPrice : $totalPrice');
  print('지불해야하는 금액은 round(반올림) ${totalPrice.round()} Dollar');
  print('지불해야하는 금액은 ceil(올림) ${totalPrice.ceil()} Dollar');
  print(
      '지불해야하는 금액은 ceilToDouble(올림 + 소숫점) ${totalPrice.ceilToDouble()} Dollar');
  print('지불해야하는 금액은 floor(내림 + 소숫점) ${totalPrice.floor()} Dollar');
  print(
      '지불해야하는 금액은 floorToDouble(내림 + 소숫점) ${totalPrice.floorToDouble()} Dollar');
}
