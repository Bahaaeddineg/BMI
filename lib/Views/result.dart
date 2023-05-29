import 'package:flutter/material.dart';
import '../compenents/components.dart';
import '../compenents/var_cons.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  final double result;
  final double age;
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
    required this.result,
  });

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60), child: CustomAppBar()),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Center(
          child: Text(
            'Your gender: ${isMale? 'Male':'Female'}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Your age: ${age.toInt()}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Result: ${height==0 || weight==0  ? '0':widget.result.toStringAsFixed(1)}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: Text(
            'Healthiness: ${height==0 || weight==0 ? 'Undermined':widget.resultPhrase}',
            style: style1,
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
