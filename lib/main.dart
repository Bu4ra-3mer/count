import 'package:count/widgets/counter_box.dart';
import 'package:count/widgets/counter_butn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CounterBox(counter: counter),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CounterButn(data: '+', myOnTap: increment),
                  SizedBox(width: 60),
                  CounterButn(data: '-', color: Colors.red, myOnTap: decrement),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
