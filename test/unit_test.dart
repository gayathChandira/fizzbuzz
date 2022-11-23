import 'package:first_app/fizzbuzz.dart';
import 'package:first_app/validators/input_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Validate User Input with value > 1000', () {
    var result = InputValidator.validateInput('2000');
    expect(result, "Please enter a value below 1000");
  });

  test('Validate User Input empty value', () {
    var result = InputValidator.validateInput('');
    expect(result, "Please enter a value");
  });

  test('Validate User Input null value', () {
    var result = InputValidator.validateInput(null);
    expect(result, "Please enter a value");
  });

  test('Validate User Inputs a value <= 1000', () {
    var result = InputValidator.validateInput('500');
    expect(result, null);
  });

  test('Generate FizzBuzz array from 0 to 5 have exactly 1 Fizz and 1 Buzz',
      () {
    var result = FizzBuzz.getFizzBuzz(5);

    //Expect array is not empty
    expect(result.isNotEmpty, true);

    //Expect result have exactly one 'Fizz'
    expect(result.where((element) => element == 'Fizz').length, 1);

    //Expect fizzbuzz have exactly one 'Buzz'
    expect(result.where((element) => element == 'Buzz').length, 1);
  });

  test(
      'Generate FizzBuzz array from 1 to 20 have 5 Fizz and 3 Buzz and 1 FizzBuzz',
      () {
    var result = FizzBuzz.getFizzBuzz(20);

    //Expect array is not empty
    expect(result.isNotEmpty, true);

    //Expect result have exactly 5 'Fizz'
    expect(result.where((element) => element == 'Fizz').length, 5);

    //Expect fizzbuzz have exactly 3 'Buzz'
    expect(result.where((element) => element == 'Buzz').length, 3);

    //Expect fizzbuzz have exactly 1 'FizzBuzz'
    expect(result.where((element) => element == 'FizzBuzz').length, 1);
  });

  test('Generate FizzBuzz array from 0 to 5 and return correct list of data',
      () {
    var result = FizzBuzz.getFizzBuzz(5);

    //Expect array is not empty
    expect(result.isNotEmpty, true);

    expect(result, ['1', '2', 'Fizz', '4', 'Buzz']);
  });
}
