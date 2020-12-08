import 'package:flutter/material.dart';
import 'dart:math';

class ChildAffectsParent extends StatefulWidget {
  ChildAffectsParent({Key key}) : super(key: key);

  @override
  _ChildAffectsParentState createState() => _ChildAffectsParentState();
}

class _ChildAffectsParentState extends State<ChildAffectsParent> {
  Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256) + 0,
        Random().nextInt(256) + 0, Random().nextInt(256) + 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
                height: 400,
                width: 200,
                color: randomColor(),
                child: Container(
                    alignment: Alignment.center,
                    // width: 100,
                    // height: 100,
                    // color: Colors.blue,
                    child: IconButton(
                      visualDensity: VisualDensity.compact,
                      iconSize: 50,
                      alignment: Alignment.center,
                      icon: Icon(Icons.favorite),
                      onPressed: () {
                        setState(() {
                          randomColor();
                        });
                      },
                    )))),
      ),
    );
  }
}
