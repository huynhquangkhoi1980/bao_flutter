import 'package:dart_core/dart_core.dart' as dart_core;

void main(List<String> arguments) {
  // print('Hello world: ${dart_core.calculate()}!');

  // Tính giai thừa
  // print("Giai thừa của 5 = ${calGiaiThua(5)}");

  // Tính Fibonaci
  calFibonaci(untilNumber: 10000000).toString();







}

// Tính Fibonaci
int calFibonaci({required int untilNumber}){
  int fibonaciCurrentNumber = 0;
  int tmpNumber = 1;
  int preFibo = 0;
  while (tmpNumber <= untilNumber) {
    preFibo = fibonaciCurrentNumber;
    fibonaciCurrentNumber = tmpNumber;
    print(fibonaciCurrentNumber.toString());
    tmpNumber = preFibo + tmpNumber;
  }

  return fibonaciCurrentNumber;
}

// Tính giai thừa
double calGiaiThua(int number){
  double result = 1;
  for (var i = 1; i <= number; i++) {
    result *=i;
  }
  return result;
}
