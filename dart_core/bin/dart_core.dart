import 'rectangle.dart';
import 'square.dart';
import 'student.dart';


void main(List<String> arguments) {
  // Tính thông tin hình Vuông & hình Chữ Nhật
  // homeWorkNumber2();

  // Show student infos homework
  // homeWorkNumber1();
}

/*
* Bài tập OOP về hình Vuông & hình Chữ Nhật
*/
void homeWorkNumber2(){
  Rectangle rectangle = Rectangle(width: 6, high: 9);
  rectangle.getInfo();

  Square square =Square(edge: 7);
  square.getInfo();
}

/*
* Bài tập OOP về phần học sinh
*/
void homeWorkNumber1(){
  Student student1 = Student(studentId: "100", studentName: "Huynh Quang Khoi",mathMark: 8, literatureMark: 6.5, englishMark: 7);
  student1.setBirthday("15-11-1980");
  student1.setPhoneNumber("0909999041");

  Student student2 = Student(studentId: "200", studentName: "Huynh Trung Nghia",mathMark: 7, literatureMark: 6, englishMark: 9.5);
  student2.setBirthday("20-12-1983");
  student2.setPhoneNumber("0983504462");

  Student student3 = Student(studentId: "300", studentName: "Tran Thi Ngoc Tu",mathMark: 9, literatureMark: 8, englishMark: 9.5);
  student3.setBirthday("26-09-1982");
  student3.setPhoneNumber("0974999578");

  List<Student> studentList = [student1, student2, student3];
  Student bestStudent = student1;
  for (var student in studentList) {
    if (bestStudent.averageMark() < student.averageMark()) {
      bestStudent = student;
    }
    student.showStudentInfos();
  }

  print("Tên học sinh có điểm trung bình lớn nhất ${bestStudent.studentName} với số điểm trung bình là ${bestStudent.averageMark()}");
}
