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
  bool _bigger = false;
  IconData updateIcon = Icons.add;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 130,
            color: Colors.white,
            //padding: EdgeInsets.fromLTRB(0, 300, 0, 300),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: buildItem)),
        Container(
            height: 300,
            child: _bigger
                ? Container()
                : Container(
                    alignment: Alignment.center,
                    //color: Colors.yellow[600],
                    child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black,
                            border: Border.all(width: 2)),
                        child: Container(
                            width: 80,
                            height: 80,
                            child: Icon(
                              //Icons.add,
                              updateIcon,
                              //size: originalIconSize,
                              //size: _bigger ? 40 : 40 * 1.5,
                              size: 60,
                              color: Colors.white,
                            )))))
      ],
    ));
  }

  Widget buildItem(BuildContext context, int index) {
    IconData newsItem = iconItems[index];
    return GestureDetector(
        onTap: () {
          setState(() {
            onItemClick(index);
          });
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
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: _bigger ? 40 : 40 * 1.5,
                    height: _bigger ? 40 : 40 * 1.5,
                    child: Icon(
                      newsItem,
                      //size: originalIconSize,
                      //size: _bigger ? 40 : 40 * 1.5,
                      size: 40,
                      color: Colors.white,
                    )))));
  }

  onItemClick(int index) {
    _bigger = !_bigger;
    print('this is ' + '$index' + ' item');
    updateIcon = iconItems[index];
  }
}
