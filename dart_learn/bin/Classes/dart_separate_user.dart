class User {
  //private static readonly
  final String _name;
  final bool _isFemale;
  final int _age;
  //private variable initialized
  const User({String name = 'Daniel', bool isFemale = true, int age = 0})
      // assertion
      : assert(age > 0),
        _name = name,
        _isFemale = isFemale,
        _age = age;
}
