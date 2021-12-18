class Person {
  String? _name;
  int? _age;
  String? _homeTown;

  getName() => _name;
  void setName(String name){
    _name = name;
  }

  getAge() => _age;
  void setAge(int age){
    _age = age;
  }

  getHomeTown() => _homeTown;
  void setHomeTown(String homeTown){
    _homeTown = homeTown;
  }
}