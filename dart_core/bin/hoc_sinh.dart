// ignore_for_file: unnecessary_this

class HocSinh {
  String? studentId;
  String? studentName;
  String? _birthday;
  String? _phoneNumber;

  double? mathMark;
  double? literatureMark;
  double? englishMark;

  HocSinh({required this.studentId, required this.studentName, required this.mathMark, required this.literatureMark, required this.englishMark});

  // Get and set birthday
  getBirthday() => _birthday;
  void setBirthday(String birthday){
    _birthday = birthday;
  }

  // Get and set phone number
  getPhoneNumber() => _phoneNumber;
  void setPhoneNumber(String phoneNumber){
    _phoneNumber = phoneNumber;
  }

  void showStudentInfos(){
    print(
      "Họ tên: $studentName \n" +
      "Mã số học sinh: $studentId \n" +
      "Ngày sinh: $_birthday \n" +
      "Số điện thoại: $_phoneNumber \n" +
      "Điểm trung bình:${averageMark().toString()}" 
    );
    studentRanking(averageMark());
    print("------------------------------");
  }

  double averageMark(){
    return (this.mathMark! + this.literatureMark! + this.englishMark!)/3;
  }

  void studentRanking(double averageMark){
    if (averageMark < 5) {
      print("Học sinh loại yếu kém");
    } else if (averageMark < 6.5) {
      print("Học sinh loại trung bình");
    }else if (averageMark < 8) {
      print("Học sinh loại khá");
    }else  {
      print("Học sinh loại giỏi");
    } 
  }
}