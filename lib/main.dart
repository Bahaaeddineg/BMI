import 'package:flutter/material.dart';
import 'ageWidget.dart';
import 'calculate.dart';
import 'heightweight.dart';
import 'widgets.dart';
import 'components.dart';
import 'var_cons.dart';

void main() => runApp(MaterialApp(home: Home()));


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {


  ////////////////////////////////////////////////////////////////////////////////
  void increaseWeight() => setState(() => weight++);
  void decreaseWeight() => setState(() => weight--);
  void increaseHeight() => setState(() => height++);
  void decreaseHeight() => setState(() => height--);
  ////////////////////////////////////////////////////////////////////////////////



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: <Widget> [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Male_Female(gender: 'Male'),
                SizedBox(width: 10),
                Male_Female(gender: 'Female')
              ],
            ),
          ),
          const SizedBox(height: 10),
          const AgeWidget(),
          const SizedBox(height: 10),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HeightWeight(
                    heightWeight: 'Weight',
                    increaseW: increaseWeight,
                    decreaseW: decreaseWeight,
                    decreaseH: decreaseHeight,
                    increaseH: increaseHeight),
                const SizedBox(
                  width: 10,
                ),
                HeightWeight(
                    heightWeight: 'Height',
                    increaseW: increaseWeight,
                    decreaseW: decreaseWeight,
                    decreaseH: decreaseHeight,
                    increaseH: increaseHeight),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Calculate(),
        ]),
      ),
    );
  }
}
