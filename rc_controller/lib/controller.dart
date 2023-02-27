import 'dart:math';

import 'package:flutter/material.dart';

class PlaneController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MediaQuery.of(context).size.height > 400 &&
            MediaQuery.of(context).size.width > 300)
        ? ControllerSection()
        : Material(
            child: Center(
              child: Container(
                height: 400,
                width: 300,
                child: Center(
                  child: Text(
                    'Your Device Is Not Supported',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffaaaaaa)),
                  ),
                ),
              ),
            ),
          );
  }
}

class ControllerSection extends StatefulWidget {
  @override
  _ControllerSectionState createState() => _ControllerSectionState();
}

class _ControllerSectionState extends State<ControllerSection> {
  double value = 5;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: BoxConstraints(minHeight: 400, minWidth: 200),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              value.toInt().toString(),
              style: TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaaaaaa)),
            ),
            Transform.rotate(
              angle: -90 * (pi / 180),
              child: Slider(
                  min: 0,
                  max: 100,
                  value: value,
                  onChanged: (index) {
                    setState(() {
                      value = index;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class DirectionController extends StatefulWidget {
  @override
  _DirectionControllerState createState() => _DirectionControllerState();
}

class _DirectionControllerState extends State<DirectionController> {
  double angel = 10;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angel,
      child: Container(),
    );
  }
}
