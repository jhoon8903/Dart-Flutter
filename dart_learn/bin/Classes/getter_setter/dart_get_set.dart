class Car {
  int _wheels = 4;
  int get wheels {
    //  get 으로 readonly 반환
    return _wheels;
  }

  // private 값을 수정할 수 있는 setter
  set wheels(int whls) {
    _wheels = whls;
  }
}
