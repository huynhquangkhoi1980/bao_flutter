
void main(List<String> arguments) {
  checkAgeList();
}

// input a Age list. Check every input Age is OK? If not, print it and its index.
void checkAgeList(){
  List<dynamic> ageList = [1,3,5, 8,"test age",20, 25, 26, -30 , 15.5, 40 , 65];
  for (var i = 0; i < ageList.length; i++) {
    // Check and print NG Age data and its index
    checkNGAgeTryCatch(age: ageList[i],index: i);
  }
}

void checkNGAgeTryCatch({required dynamic age, required int index}){
  try {
    if (age is! int ) {
      if (age is double) {
        throw FormatException("$age at location $index must not a double type");
      }
      throw FormatException("$age at location $index must not a number type");
    }
    if (age <= 0) {
      throw FormatException("$age at location $index must not a number larger than 0");
    }
  } 
  catch (e) {
    print(e.toString());
  }
}

void checkNGAge({required dynamic age, required int index}){
  if ((age is! int) || (age <=0)) {
    print("$age at position $index must be integer type and larger than 0");
  } 
}