

import 'package:rxdart/rxdart.dart';

void main(List<String> arguments) async {
  // demoPublishSubject();
  // demoBehaviorSubject();
  demoReplaySubject();
 

}

// Đối với PublishSubject, mỗi lần lấy giá trị nó chỉ lấy các giá trị được thêm vào sau lệnh listen đó
demoPublishSubject(){
  PublishSubject publishSubject = PublishSubject<int>();
  publishSubject.listen((value) { 
    // Get 1st data
    print("Get 1st data: $value");
  });
  publishSubject.add(100);
  publishSubject.add(101);
  publishSubject.add(102);

  publishSubject.listen((value) { 
    // Get 2nd data
    print("Get 2nd data: $value");
  });
  publishSubject.add(200);
  publishSubject.add(201);
  publishSubject.add(202);

}

// BehaviorSubject  sẽ phát ra các giá trị mà được thêm vào stream trước đó gần nhất và các giá trị thêm vào sau này
demoBehaviorSubject(){
  BehaviorSubject publishSubject = BehaviorSubject<dynamic>();

  publishSubject.add(80);
  publishSubject.add(90);

  publishSubject.listen((value) {
    print("Lần thứ 1: " + value.toString());
  });

  publishSubject.add(100);
  publishSubject.add(101);
  publishSubject.add(102);

  publishSubject.listen((value) {
    print("Lần thứ 2: " + value.toString());
  });

  publishSubject.add(200);
  publishSubject.add(201);
  publishSubject.add(202);

}

demoReplaySubject(){
  ReplaySubject replaySubject = ReplaySubject<dynamic>();

  replaySubject.add(80);
  replaySubject.add(90);

  replaySubject.listen((value) {
    print("Lần thứ 1: " + value.toString());
  });

  replaySubject.add(100);
  replaySubject.add(101);
  replaySubject.add(102);

  replaySubject.listen((value) {
    print("Lần thứ 2: " + value.toString());
  });

  replaySubject.add(201);
  replaySubject.add(202);
  replaySubject.add(203);

}