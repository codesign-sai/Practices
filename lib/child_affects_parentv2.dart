import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChildAffectsParentV2 extends StatefulWidget {
  ChildAffectsParentV2({Key key}) : super(key: key);

  @override
  _ChildAffectsParentV2State createState() => _ChildAffectsParentV2State();
}

class _ChildAffectsParentV2State extends State<ChildAffectsParentV2> {
  final iconItems = [
    Icons.add,
    Icons.ac_unit,
    Icons.access_alarms,
    Icons.accessibility_new,
    Icons.account_balance,
    Icons.account_circle,
    Icons.ad_units,
    Icons.add_a_photo,
    Icons.face,
    Icons.dashboard_customize,
    Icons.sanitizer,
    Icons.dangerous,
    Icons.format_align_justify,
    Icons.label,
    Icons.fact_check
  ];
  final double originalIconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(0, 300, 0, 300),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: buildItem));
  }

  Widget buildItem(BuildContext context, int index) {
    IconData newsItem = iconItems[index];
    return GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Container(
            alignment: Alignment.center,
            color: Colors.yellow[600],
            child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                    border: Border.all(width: 2)),
                child: Icon(
                  newsItem,
                  size: originalIconSize,
                  color: Colors.white,
                ))));
  }

  newIconSize(double newis) {
    newis = originalIconSize * 1.5;
    return newis;
  }
}
