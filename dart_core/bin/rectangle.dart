class Rectangle {
  double? width;
  double? high;

  Rectangle({required this.width, required this.high});

  double calculatePerimeter(){
    return (width! + high!)*2;
  }

  double calculateAcreage(){
    return width!*high!;
  }

  void getInfo(){
    print(
      "Chiều dài hình chữ nhật là: $high \n" +
      "Chiều rộng hình chữ nhật là: $width \n" +
      "Chu vi hình chữ nhật là: ${calculatePerimeter()} \n" +
      "Diện tích hình chữ nhật là: ${calculateAcreage()} \n" +
      "----------------------------------------------------"
    );
  }
}