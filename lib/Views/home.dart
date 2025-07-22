import 'package:flutter/material.dart';
import 'dart:async';
import '../Widgets/ageWidget.dart';
import '../Widgets/calculate.dart';
import '../Widgets/heightweight.dart';
import '../compenents/components.dart';
import '../compenents/var_cons.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Timer? timerr;

  ////////////////////////////////////////////////////////////////////////////////
  void decreaseWeight() => setState(() => weight--);
  void increaseWeight() => setState(() => weight++);
  void increaseHeight() => setState(() => height++);
  void decreaseHeight() => setState(() => height--);
  ////////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaleFemale('Male'),
                const SizedBox(width: 8),
                MaleFemale('Female'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const AgeWidget(),
          const SizedBox(height: 8),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                HeightWeight(
                    heightWeight: 'Weight',
                    increaseW: increaseWeight,
                    decreaseW: decreaseWeight,
                    decreaseH: decreaseHeight,
                    increaseH: increaseHeight,
                    ),
                const SizedBox(
                  width: 10,
                ),
                HeightWeight(
                  
                  
                    heightWeight: 'Height',
                    increaseW: increaseWeight,
                    decreaseW: decreaseWeight,
                    decreaseH: decreaseHeight,
                    increaseH: increaseHeight,
        
                    ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Calculate(),
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded MaleFemale(String gender) {
    return Expanded(
      child: GestureDetector(
        onTap: () =>setState(() => isMale = gender == 'Male' ? true : false),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isMale && gender == 'Male' || !isMale && gender == 'Female'
                  ? Colors.green[800]
                  : Colors.green[300],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  gender == 'Male' ? Icons.male : Icons.female,
                  size: 70,
                  color: Colors.white,
                ),
                Text(gender, style: style1)
              ],
            )),
      ),
    );
  }
}
