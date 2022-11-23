import 'package:flutter/material.dart';

class ListSquare extends StatelessWidget {
  final String child;
  const ListSquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(3)),
          color: Colors.green[400],
        ),
        height: 30,
        child: Center(
          child: Text(
            child,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    );
  }
}
