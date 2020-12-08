import 'package:flutter/material.dart';

class AmountSelector extends StatefulWidget {
  AmountSelector({Key key}) : super(key: key);

  @override
  _AmountSelectorState createState() => _AmountSelectorState();
}

class _AmountSelectorState extends State<AmountSelector> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          value: _sliderValue,
          label: '$_sliderValue',
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
            });
          },
          divisions: 5,
          min: 0,
          max: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('0'),
              Text('20'),
              Text('40'),
              Text('60'),
              Text('80'),
              Text('100'),
            ],
          ),
        ),
        Text('   '),
        Container(
          child: Text(
            '\$$_sliderValue AUD',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            border: new Border.all(color: Colors.indigo[100], width: 4),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        )
      ],
    ));
  }
}
