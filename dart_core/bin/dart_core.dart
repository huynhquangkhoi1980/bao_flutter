import 'package:dart_core/dart_core.dart' as dart_core;

void main(List<String> arguments) {
  // print('Hello world: ${dart_core.calculate()}!');

  // Tính giai thừa
  // print("Giai thừa của 5 = ${calGiaiThua(5)}");

  // Tính Fibonaci
  // calFibonaci(untilNumber: 20000000).toString();

  // call printEvenNumberSumUnder400() due to print the event number that their sum less than 400
  printEvenNumberSumUnder400();






}

/*
* Từ 1 đến 1000 in ra các số chẵn mà tổng các số đó không lớn hơn 400.
*/
void printEvenNumberSumUnder400(){
  int sum = 0;
  // creat a list save the event number object
  List<int> listResult = [];
  for(int i=0; i<=1000; i++){
    // If sum > 400 then stop this for loop
    if (sum > 400) break;
    // While sum less than 400 and i is a event number then calculate sum for i
    if ((sum <= 400) && (i%2==0)){
      sum += i;
      print(i.toString() + "--" + sum.toString());
      if(sum <= 400) listResult.add(i);
    }
  }
  
  for (var j in listResult) {
    // print all the event number that their sum less than 400
    print(j.toString());
  }
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
