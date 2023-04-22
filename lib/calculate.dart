import 'package:flutter/material.dart';
import 'result.dart';
import 'var_cons.dart';

class Calculate extends StatelessWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            calculate = weight / (height * height);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Result(
                        age: 20,
                        name: 'gueroumi',
                        result: calculate,
                      )),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            child: Center(
              child: Text(
                'Calculate',
                style: style1,
              ),
            ),
          ),
        ));
  }
}
