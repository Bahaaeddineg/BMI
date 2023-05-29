import 'package:flutter/material.dart';
import 'var_cons.dart';
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        title: const Text(
          'BMI',
          style:  style2,
        ),
      );
  }
}