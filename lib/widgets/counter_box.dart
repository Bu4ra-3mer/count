import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  final int counter;
  const CounterBox({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 300,
      height: 370,
      alignment: Alignment.center,
      child: Text(
        '$counter',
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
