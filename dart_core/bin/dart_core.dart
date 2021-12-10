import 'package:dart_core/dart_core.dart' as dart_core;

void main(List<String> arguments) {
  // print('Hello world: ${dart_core.calculate()}!');

  // Tính giai thừa
  // print("Giai thừa của 5 = ${calGiaiThua(5)}");

  // Tính Fibonaci
  // calFibonaci(untilNumber: 20000000).toString();

  // call printEvenNumberSumUnder400() due to print the event number that their sum less than 400
  // printEvenNumberSumUnder400();

  // call countDevisble3and5() due to print number of divisble 3 numbers and divisble 5 numbers
  // countDevisble3and5(limitNumber: 10000);

  // call printSumOfDivisible3NumbersInList()
  // List<int> list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  // printSumOfDivisible3NumbersInList(listSource: list5);

  // Print Hotline in map 
  Map classInformation = {
    "id": 12,
    "name": "Báo Flutter 1.2",
    "description": " Lớp học lập trình Flutter, hot line: 0349582808"
  };
  printHotlineNumber(mapResource: classInformation);
}

/*
* 3. Cho thông tin biểu diễn dưới sạng sau :
* var classInformation = {
*     “id”: 12,
*     “name”: “Báo Flutter 1.2”,
*     “description”: “ Lớp học lập trình Flutter, hot line: 0349582808”
* };
* Yêu cầu: In ra số hotline của lớp học trên.
*/
void printHotlineNumber({required mapResource}){
  // Get Description from map 
  String strDescription = mapResource['description'];
  // Get index of [:] char due to base on it to get the hotline number
  int index = strDescription.indexOf(":");
  // Get hotline number
  String stHotline = strDescription.substring(index + 1);
  print("Hotline is: ${stHotline}");
}

/*
* Cho một list : List list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8]; In ra tổng các số chia hết cho 3.
*/
void printSumOfDivisible3NumbersInList({required List<int> listSource}){
  int sum = 0;
  for (var i in listSource) {
    if (i%3==0) {
      sum += i;
    }
  }
  print("Sum of divisible 3 numbers in list is ${sum.toString()}");
}

/*
* Từ. 1 đến 10000, Viết chương trình đếm xem có bao nhiêu chữ số chia hết cho 3 , bao nhiêu số chia hết cho 5
*/
void countDevisble3and5({required int limitNumber}){
  int countDivisble3 = 0;
  int countDivisble5 = 0;
  for (var i = 0; i < limitNumber; i++) {
    if (i%3==0) {
      print(i.toString() + " divisble 3");
      countDivisble3 += 1;
    }

    if (i%5==0) {
      print(i.toString() + " divisble 5");
      countDivisble5 += 1;
    }
  }

  print("There are ${countDivisble3.toString()} numbers divislbe 3");
  print("There are ${countDivisble5.toString()} numbers divislbe 5");
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