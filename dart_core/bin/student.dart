import 'person.dart';

class Student extends Person {
  int? _mark;
  String? _grade;

  Student({required name, required id}) : super(name: name, id: id);

  getMark() => _mark;
  void setMark(int mark){
    _mark =mark;
  }

  getGrade() => _grade;

  @override
  void display() {
    print("Người tên là $name, với Id là $id, có số điểm là $_mark, là ${_studentRanking(_mark!)}");
  }

  // Get grade of studen depend on mark
  String _studentRanking(int averageMark){
    if (averageMark < 5) {
      return "học sinh loại yếu kém";
    } else if (averageMark < 6.5) {
      return "học sinh loại trung bình";
    }else if (averageMark < 8) {
      return "học sinh loại khá";
    }else  {
      return "học sinh loại giỏi";
    } 
  }
}