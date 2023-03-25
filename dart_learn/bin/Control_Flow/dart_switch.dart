void main(List<String> args) {
  const sessions = 'summer';
  if (sessions == 'spring') {
    print('가벼운바람막이');
  } else if (sessions == 'summer') {
    print('반팔반바지');
  } else if (sessions == 'autumn') {
    print('기팔 긴바지 잠바');
  } else {
    print('내복, 두껍고 긴 패딩');
  }
  print('if statement out');

  print('switch statement in');
  switch (sessions) {
    case 'spring':
      print('가벼운바람막이');
      break;
    case 'summer':
      print('반팔반바지');
      break;
    case 'autumn':
      print('기팔 긴바지 잠바');
      break;
    default:
      print('내복, 두껍고 긴 패딩');
  }
  print('switch end');

  // const gender = 'female';

  // switch (gender) {
  //   case 'male':
  //     print('man');
  //     break;
  //   case 'female':
  //     print('woman');
  //     break;
  //   default:
  //     print('unknown_gender');
  // }
  // print('end');

  // if (number == 0) {
  //   print('zero');
  // } else if (number == 1) {
  //   print('one');
  // } else if (number == 2) {
  //   print('two');
  // } else if (number == 3) {
  //   print('three');
  // } else if (number == 4) {
  //   print('four');
  // } else {
  //   print('something else');
  // }
  // print('end');
  ////////////////////////////////////////////////////////////////
  // print('switch in');
  // switch (number) {
  //   case 0:
  //     print('zero');
  //     break;
  //   case 1:
  //     print('one');
  //     break;
  //   case 2:
  //     print('two');
  //     break;
  //   case 3:
  //     print('three');
  //     break;
  //   case 4:
  //     print('four');
  //     break;
  //   default:
  //     print('something else');
  // }
  // print('switch out');
}
