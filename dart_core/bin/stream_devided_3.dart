class StreamDevided3 {
  
  int? destinationNumber = 10;

  // int? devided3Number;
  void createStream() async{
    // Create delay time 3 seconds
    Duration delayTime = Duration(seconds: 1);
    processNumber(destinationNumber!, delayTime);
  
  }

  void processNumber(int desNumber, Duration delayTime) async{
    late Stream<int> stream;
    for (var i = 1; i <= desNumber; i++) {
      if ((i % 3) == 0) {
        // devided3Number = i;
        stream= Stream<int>.periodic(
          delayTime,
          devided3);
      } 
    }

    stream.listen((event) {print(event.toString());});
  }

  int devided3(int i) => i;
}