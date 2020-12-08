import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChildAffectsParentV2 extends StatefulWidget {
  ChildAffectsParentV2({Key key}) : super(key: key);

  @override
  _ChildAffectsParentV2State createState() => _ChildAffectsParentV2State();
}

class _ChildAffectsParentV2State extends State<ChildAffectsParentV2> {
  final List<Icon> iconItems = [
    Icon(Icons.add, size: 40, color: Colors.white),
    Icon(Icons.ac_unit, size: 40, color: Colors.white),
    Icon(Icons.access_alarms, size: 40, color: Colors.white),
    Icon(Icons.accessibility_new, size: 40, color: Colors.white),
    Icon(Icons.account_balance, size: 40, color: Colors.white),
    Icon(Icons.account_circle, size: 40, color: Colors.white),
    Icon(Icons.ad_units, size: 40, color: Colors.white),
    Icon(Icons.add_a_photo, size: 40, color: Colors.white),
    Icon(Icons.face, size: 40, color: Colors.white),
    Icon(Icons.dashboard_customize, size: 40, color: Colors.white),
    Icon(Icons.sanitizer, size: 40, color: Colors.white),
    Icon(Icons.dangerous, size: 40, color: Colors.white),
    Icon(Icons.format_align_justify, size: 40, color: Colors.white),
    Icon(Icons.label, size: 40, color: Colors.white),
    Icon(Icons.fact_check, size: 40, color: Colors.white)
  ];
  final double originalIconSize = 40;
  bool _bigger = false;
  int selected = 0;
  Icon updateIcon = Icon(Icons.add);
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
                          child: updateIcon,
                        ))))
      ],
    ));
  }

  Widget buildItem(BuildContext context, int index) {
    //IconData newsItem = iconItems[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
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
              borderRadius: BorderRadius.circular(90),
              color: Colors.black,
              border: Border.all(width: 2)),
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: selected != index ? 40 : 40 * 1.5,
            height: selected != index ? 40 : 40 * 1.5,
            child: iconItems[index],
            // Icon(
            //   newsItem,
            //   //size: originalIconSize,
            //   //size: _bigger ? 40 : 40 * 1.5,
            //   size: 40,
            //   color: Colors.white,
            // ),
          ),
        ),
      ),
    );
  }

  onItemClick(int index) {
    _bigger = !_bigger;
    print('this is ' + '$index' + ' item');
    updateIcon = iconItems[index];
  }
}
