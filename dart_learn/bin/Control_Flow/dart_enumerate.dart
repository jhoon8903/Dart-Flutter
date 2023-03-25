enum Gender {
  male,
  female,
}

void main(List<String> args) {
  EatChicken statusOfEatChicken = EatChicken.phoneNumberFound;
  Gender gender = Gender.male;
  gender == Gender.male ? print('male') : print('female');
  switch (statusOfEatChicken) {
    case EatChicken.none:
      print('findPhoneNumber');
      break;
    case EatChicken.phoneNumberFound:
      break;
    case EatChicken.callChickenShop:
      break;
    case EatChicken.orderChicken:
      break;
    case EatChicken.wait:
      break;
    case EatChicken.deliveredChicken:
      break;
    case EatChicken.prepareToEat:
      break;
    case EatChicken.eat:
      break;
  }
}

enum EatChicken {
  none,
  phoneNumberFound,
  callChickenShop,
  orderChicken,
  wait,
  deliveredChicken,
  prepareToEat,
  eat,
}
