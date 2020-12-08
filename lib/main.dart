import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/amount_selector.dart';
import 'package:helloworld/change_container_size.dart';
import 'package:helloworld/child_affects_parent.dart';
import 'package:helloworld/child_affects_parentv2.dart';
import 'package:helloworld/date_selector.dart';
//import 'package:helloworld/place_cards.dart';
//import 'package:helloworld/paint_icon.dart';
//import 'package:helloworld/scrollable_screen.dart';
//import 'package:helloworld/split_the_screen.dart';
//import 'package:helloworld/date_selector.dart';
import 'package:helloworld/display_sheet.dart';
import 'package:helloworld/paint_icon.dart';
import 'package:helloworld/place_cards.dart';
import 'package:helloworld/scrollable_screen.dart';
import 'package:helloworld/split_the_screen.dart';

void main() => runApp(MyApp());

//void main() {
//  runApp(new ScrollableScreen(
//    items: new List<String>.generate(100, (i) => "Item $i"),
//  ));
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
        title: 'Welcome to Flutter', //home: new HelloWord());
        //home: new PaintBackground());
        //home: new PaintIcon());
        //home: new ScrollableScreen());
        // home: new SplitTheScreen());
        //home: new PlaceCards());
        //home: new DataSelector());
        // home: new AmountSelector());
        //home: new DisplaySheet());
        //home: new ChangeContainerSize());
        //home: new ChildAffectsParent());
        home: new ChildAffectsParentV2());
  }
}

class HelloWord extends StatelessWidget {
  const HelloWord({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

class PaintBackground extends StatelessWidget {
  const PaintBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.lightBlue[900],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
