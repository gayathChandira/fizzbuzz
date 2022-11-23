import 'package:flutter/material.dart';

class ListSquare extends StatelessWidget {
  final String child;

  ListSquare({required this.child});
  final List<Color> cList = [];
  List<Color> getTextColor() {
    if (child == "Fizz") {
      cList.add(Colors.deepOrange.shade900);
      cList.add(Colors.green.shade100);
      return cList;
    } else if (child == "Buzz") {
      cList.add(Colors.purple.shade900);
      cList.add(Colors.green.shade100);
      return cList;
    } else if (child == "FizzBuzz") {
      cList.add(Colors.blue.shade900);
      cList.add(Colors.green.shade100);
      return cList;
    } else {
      cList.add(Colors.white);
      cList.add(Colors.green);
      return cList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(3)),
          color: getTextColor()[1],
        ),
        height: 30,
        child: Center(
          child: Text(
            child,
            style: TextStyle(
              fontSize: 18,
              color: getTextColor()[0],
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    );
  }
}
