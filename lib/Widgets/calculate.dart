import 'package:flutter/material.dart';
import '../Views/result.dart';
import '../compenents/var_cons.dart';
class Calculate extends StatelessWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            calculate = weight / (height * height*0.0001);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Result(
                        age:age,
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
