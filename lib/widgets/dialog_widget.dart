import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return createAleartDialog(context);
  }

  createAleartDialog(BuildContext context) {
    const String message =
        "FizzBuzz is a program that prints the numbers from 1 to a user input number and for multiples" +
            "of '3' print 'Fizz' instead of the number and for the multiples of '5' print “Buzz” and then" +
            "if the number is multiples of both 3 and 5 it should print 'FizzBuzz'";

    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 12),
                  const Text(
                    'FizzBuzz App',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    message,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              ),
            ),
          );
        });
  }
}
