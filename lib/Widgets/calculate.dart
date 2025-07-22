import 'package:flutter/material.dart';
import 'package:quizapp/Views/result.dart';
import '../compenents/var_cons.dart';
import 'package:page_transition/page_transition.dart';

class Calculate extends StatelessWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            calculate = weight / (height * height * 0.0001);
            Navigator.of(context).push(PageTransition(
                child: Result(age: age, result: calculate),
                type: PageTransitionType.topToBottom,
                duration: const Duration(milliseconds: 500)));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            child: const Center(
              child: Text(
                'Calculate',
                style: style1,
              ),
            ),
          ),
        ));
  }
}
