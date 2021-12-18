import 'package:http/http.dart' as http;

import 'person.dart';
import 'stream_devided_3.dart';

void main(List<String> arguments) async {
StreamDevided3 object = StreamDevided3();
object.createStream();

  // Person person = Person();
  // person.setName("Huynh Quang Khoi");
  // person.setAge(41);
  // person.setHomeTown("Quang Ngai province");

  // stutlerIntroduce(person);

}

// Stutler introduce use person class
void stutlerIntroduce(Person person) async{
  var name = await showNameByClass(person);
  print("Tên tôi là $name");

  var age = await showAgeByClass(person);
  print("Tôi $age tuổi.");

  var homeTowm = await showHomeTownByClass(person);
  print("Quê tôi ở $homeTowm");
}

// Homework: stutler introduce
Future<String> showNameByClass(Person person) async{
  Future<String> showName() => Future.delayed(Duration(seconds:3), () => person.getName());
  return showName();
}

Future<int> showAgeByClass(Person person) async{
  Future<int> showAge() => Future.delayed(Duration(seconds:5), () => person.getAge());
  return showAge();
}

Future<String> showHomeTownByClass(Person person) async{
  Future<String> showHomeTown() => Future.delayed(Duration(seconds:3), () => person.getHomeTown());
  return showHomeTown();
}

Future<String> showName() => Future.delayed(Duration(seconds:3), () => 'Huynh Quang Khoi');

Future<int> showAge() => Future.delayed(Duration(seconds:5), () => 41);

Future<String> showHomeTown() => Future.delayed(Duration(seconds:2), () => 'tỉnh Quang Ngai');


// 6. Future - then: this way could execute other below command first than. No need to use asynch, await with then 
void futureThen() {
  makeLastNumber().then(
    (value){
      print(value.toString());
    }
  );
}

// 6. Future - then
Future<int> makeLastNumber(){
  return Future.delayed(
    Duration(seconds: 2), 
    (){return 5;}
  );
}

// 5. Stream-Asynch*, Yield: get data out from stream and calculate the sum of them
Future<int> sumStream(Stream<int> stream) async{
  var sum = 0;
  await for (var item in stream) {
    sum += item;
  }
  return sum;
}

// 5. Stream-Asynch*, Yield: create numbers from 1 to destinationNumber, put it in the stream
Stream<int> countStream(int destinationNumber) async*{
  for (var i = 1; i < destinationNumber; i++) {
    yield i;
  }
}


// 4. Stream listen
void streamListen() async{
  // Create delay time 2 seconds
  Duration delayTime = Duration(seconds: 2);

  // Create Stream as int data, then delayTime will create some numbers in stream
  Stream<int> stream = Stream<int>.periodic(delayTime, makeNumber);

  // Listen from stream and in data from there 
  stream.listen(
    (event) {
      print(event.toString());
    }
  );
} 

// 3. Create number in stream depend on delay time and print it out from there
void createDelayTime() async{
  // Create delay time 5 seconds
  Duration delayTime = Duration(seconds: 5);

  // Create Stream as int data, then delayTime will create some numbers in stream
  Stream<int> stream = Stream<int>.periodic(delayTime, makeNumber);

  // Await and read data from stream
  await for (var item in stream) {
    print(item);
  }
}

// 3.Start value from 1
int makeNumber(int value) => (value + 1);


/*
* 2. Read data from a website
*/
Future<String> getData() async {
  try {
    // ignore: unused_local_variable
    final response = await http.get(Uri.parse("https://vnexpress.net/"));
    print(response.headers.toString());
    return response.body;
  } catch (e) {
    print("Error: $e");
  }
  return "";
}

// 1. Call and wait return result from fetchUserOrder function
Future<String> createOrderMessage() async{
  var order = await fetchUserOder();
  return 'Your order is: $order';
}

// 1. wait for 2 second then return the string as 'Large Latte'
Future<String> fetchUserOder() => Future.delayed(Duration(seconds: 2), () => 'Large Latte');
