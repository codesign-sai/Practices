import 'package:flutter/material.dart';
import 'dart:math';

class ChangeContainerSize extends StatefulWidget {
  ChangeContainerSize({Key key}) : super(key: key);

  @override
  _ChangeContainerSizeState createState() => _ChangeContainerSizeState();
}

class _ChangeContainerSizeState extends State<ChangeContainerSize> {
  // Between 0.0 and 1.0: [0, 1)
  double temporary_height = 100;
  newContainerHeight(double newHt) {
    setState(() {
      temporary_height = newHt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Align(
            child: Container(
          constraints: BoxConstraints(
            minHeight: 100,
            maxHeight: 300,
          ),
          height: temporary_height,
          width: 200,
          //alignment: Alignment.bottomCenter,
          color: Colors.yellow[800],
        )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.all(20),
                child: FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: () {
                    temporary_height =
                        temporary_height - Random().nextDouble() * 30;
                    print('$temporary_height');
                    newContainerHeight(temporary_height);
                  },
                ))),
        Align(
            alignment: Alignment.bottomRight,
            child: Container(
                padding: EdgeInsets.all(20),
                child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      temporary_height =
                          temporary_height + Random().nextDouble() * 30;
                      print('$temporary_height');
                      newContainerHeight(temporary_height);
                    }))),
      ],
    ));
  }
}
