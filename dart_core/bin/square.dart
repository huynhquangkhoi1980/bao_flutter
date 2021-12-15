import 'rectangle.dart';

class Square extends Rectangle {
  double? edge;
  Square({required this.edge}):super(high: edge, width: edge);

  @override
  void getInfo(){
    print(
      "Cạnh hình vuông là: $edge \n" +
      "Chu vi hình vuông là: ${calculatePerimeter()} \n" +
      "Diện tích hình vuông là: ${calculateAcreage()} \n" +
      "----------------------------------------------------"
    );
  }

}