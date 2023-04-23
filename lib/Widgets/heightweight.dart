import 'package:flutter/material.dart';
import '../compenents/var_cons.dart';

// ignore: must_be_immutable
class HeightWeight extends StatefulWidget {
  final String heightWeight;
  VoidCallback increaseW;
  VoidCallback decreaseW;
  VoidCallback increaseH;
  VoidCallback decreaseH;

  HeightWeight(
      {super.key, required this.heightWeight,
      required this.increaseW,
      required this.decreaseW,
      required this.increaseH,
      required this.decreaseH});

  @override
  State<HeightWeight> createState() => _HeightWeightState();
}

class _HeightWeightState extends State<HeightWeight> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green[300],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Text(
                  widget.heightWeight,
                  style: style1,
                
              ),
              SizedBox(height: 10,),
              Row(
                             
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      Text(
                        '${widget.heightWeight == 'Weight' ? weight : height}',
                        style: style2,
                      ),
                      const SizedBox(width: 5,),
                       Text(
                        widget.heightWeight=='Height'? 'Cm':'Kg',
                        style: style4,
                      ),
                    ],
                  ),
                
              
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      mini: true,
                      heroTag: widget.heightWeight=='Height'? 'Height--':'Weight--',
                      backgroundColor: Colors.green[800],
                      onPressed: widget.heightWeight == 'Weight'
                          ? widget.decreaseW
                          : widget.decreaseH,
                      child: const Icon(
                        Icons.remove,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      mini:true,
                        heroTag: widget.heightWeight=='Height'? 'Height++':'Weight++',
                        backgroundColor: Colors.green[800],
                        onPressed: widget.heightWeight == 'Weight'
                            ? widget.increaseW
                            : widget.increaseH,
                        child: const Icon(
                          Icons.add,
                          size: 20,
                        ))
                  ],
                ),
              
            ],
          )),
    );
  }
}
