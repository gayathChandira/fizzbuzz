class FizzBuzz {
  static List<String> getFizzBuzz(int max) {
    int min = 1;
    var resultList = <String>[];

    for (int num = min; num <= max; num++) {
      if (num % 5 == 0 && num % 3 == 0) {
        resultList.add("FizzBuzz");
      } else if (num % 3 == 0) {
        resultList.add("Fizz");
      } else if (num % 5 == 0) {
        resultList.add("Buzz");
      } else {
        resultList.add(num.toString());
      }
    }
    return resultList;
  }
}
