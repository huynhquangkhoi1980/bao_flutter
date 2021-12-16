import 'rectangle.dart';
import 'square.dart';
import 'hoc_sinh.dart';
import 'student.dart';


void main(List<String> arguments) {
  
  // Khởi tạo đối tượng student và thực thi hàm display để in ra thông tin của student đó về điểm, grade (xếp hạng )
  homeWorkNumber3();

  // Tính thông tin hình Vuông & hình Chữ Nhật
  // homeWorkNumber2();

  // Show student infos homework
  // homeWorkNumber1();
}

/*
* Bài tập OOP về student
*/
void homeWorkNumber3(){
  Student student1 = Student(name: "Huỳnh Quang Khôi", id: "2008");
  student1.setAge(41);
  student1.setMark(7);
  student1.display();
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
  HocSinh hocSinh1 = HocSinh(studentId: "100", studentName: "Huynh Quang Khoi",mathMark: 8, literatureMark: 6.5, englishMark: 7);
  hocSinh1.setBirthday("15-11-1980");
  hocSinh1.setPhoneNumber("0909999041");

  HocSinh hocSinh2 = HocSinh(studentId: "200", studentName: "Huynh Trung Nghia",mathMark: 7, literatureMark: 6, englishMark: 9.5);
  hocSinh2.setBirthday("20-12-1983");
  hocSinh2.setPhoneNumber("0983504462");

  HocSinh hocSinh3 = HocSinh(studentId: "300", studentName: "Tran Thi Ngoc Tu",mathMark: 9, literatureMark: 8, englishMark: 9.5);
  hocSinh3.setBirthday("26-09-1982");
  hocSinh3.setPhoneNumber("0974999578");

  List<HocSinh> studentList = [hocSinh1, hocSinh2, hocSinh3];
  HocSinh bestStudent = hocSinh1;
  for (var student in studentList) {
    if (bestStudent.averageMark() < student.averageMark()) {
      bestStudent = student;
    }
    student.showStudentInfos();
  }

  print("Tên học sinh có điểm trung bình lớn nhất ${bestStudent.studentName} với số điểm trung bình là ${bestStudent.averageMark()}");
}
