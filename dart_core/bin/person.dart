import 'person_sample.dart';

class Person extends PersonSample {
  String? id;
  String? name;
  int? _age;

  Person({required this.id, required this.name});

  getAge() => _age;
  void setAge(int age){
    _age = age;
  }

  @override
  void input() {
    // TODO: implement input
  }

  @override
  void display() {
    // TODO: implement display
    print("Người tên là $name, với Id là $id, có số tuổi là $_age");
  }
}