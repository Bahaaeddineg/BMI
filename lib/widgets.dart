import 'package:flutter/material.dart';
import 'var_cons.dart';

// ignore: camel_case_types
class Male_Female extends StatefulWidget {
  final String gender;

  const Male_Female({super.key, required this.gender});
  @override
  State<Male_Female> createState() => _Male_FemaleState();
}

// ignore: camel_case_types
class _Male_FemaleState extends State<Male_Female> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = widget.gender == 'Male' ? true : false;
          });
        },
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isMale ? Colors.green[800] : Colors.green[300],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.gender == 'Male' ? Icons.male : Icons.female,
                  size: 70,
                  color: Colors.white,
                ),
                Text(widget.gender, style: style1)
              ],
            )),
      ),
    );
  }
}
