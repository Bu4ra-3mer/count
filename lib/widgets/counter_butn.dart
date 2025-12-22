import 'package:flutter/material.dart';

class CounterButn extends StatelessWidget {
  final String data;
  final Color color;
  final Function()? myOnTap;
  const CounterButn({
    super.key,
    required this.data,
    this.color = Colors.blue,
    required this.myOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myOnTap,
      child: Container(
        width: 130,
        height: 130,
        color: color,
        alignment: Alignment.center,
        child: Text(
          data,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
