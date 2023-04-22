import 'package:flutter/material.dart';
import 'var_cons.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  final double result;
  final int age;
  final String name;
  String resultString = '';
  String get resultPhrase {
    if (result >= 40)
      resultString = 'Obesity Class 3';
    else if (result >= 35 && result < 40)
      resultString = 'Obesity Class 2';
    else if (result >= 30 && result < 35)
      resultString = 'Obesity Class 1';
    else if (result >= 25 && result < 30)
      resultString = 'Overweight';
    else if (result >= 18.5 && result < 25)
      resultString = 'Normal';
    else
      resultString = 'Underweight';
    return resultString;
  }

  Result({super.key, 
    required this.age,
    required this.name,
    required this.result,
  });

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 29, 190, 112),
        title: Text(
          'BMI',
          style: style1,
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Center(
          child: Text(
            'Your name: ${widget.name}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Your age: ${widget.age}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Result: ${widget.result.toStringAsFixed(1)}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Healthiness: ${widget.resultPhrase}',
            style: style1,
          ),
        ),
      ]),
    );
  }
}
