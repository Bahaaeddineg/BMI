import 'dart:async';
import 'package:flutter/material.dart';
import '../compenents/var_cons.dart';

// ignore: must_be_immutable
class HeightWeight extends StatefulWidget {
  final String heightWeight;
  VoidCallback increaseW;
  VoidCallback decreaseW;
  VoidCallback increaseH;
  VoidCallback decreaseH;

  HeightWeight({
    super.key,
    required this.heightWeight,
    required this.increaseW,
    required this.decreaseW,
    required this.increaseH,
    required this.decreaseH,
  });

  @override
  State<HeightWeight> createState() => _HeightWeightState();
}

class _HeightWeightState extends State<HeightWeight> {
  Timer? timer;
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer(VoidCallback callback) {
    const duration = Duration(milliseconds: 150);
    timer = Timer.periodic(duration, (_) => callback());
  }

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
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.heightWeight == 'Weight' ? weight : height}',
                    style: style2,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.heightWeight == 'Height' ? 'Cm' : 'Kg',
                    style: style4,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.green[800],
                    radius: 25,
                    child: GestureDetector(
                      onTap: widget.heightWeight == 'Weight'
                          ? widget.decreaseW
                          : widget.decreaseH,
                      onLongPress: () => widget.heightWeight == 'Weight'
                          ? startTimer(widget.decreaseW)
                          : startTimer(widget.decreaseH),
                      onLongPressUp: () => timer?.cancel(),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green[800],
                    radius: 25,
                    child: GestureDetector(
                      onTap: widget.heightWeight == 'Weight'
                          ? widget.increaseW
                          : widget.increaseH,
                      onLongPress: () => widget.heightWeight == 'Weight'
                          ? startTimer(widget.increaseW)
                          : startTimer(widget.increaseH),
                      onLongPressUp: () => timer?.cancel(),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
