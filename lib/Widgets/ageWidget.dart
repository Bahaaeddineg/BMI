import 'package:flutter/material.dart';
import '../compenents/var_cons.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.green[300],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('Age', style: style1)),
            Center(child: Text('${age.toInt()}', style: style2)),
            Slider(
                activeColor: Colors.green[800],
                min: 5,
                max: 100,
                value: age,
                onChanged: (newValue) => setState(() => age = newValue))
          ],
        ),
      ),
    );
  }
}
