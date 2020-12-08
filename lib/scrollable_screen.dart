import 'package:flutter/material.dart';

class ScrollableScreen1 extends StatelessWidget {
  //final List<Widget> items=[Card(color: Colors.redAccent,),Card(color: Colors.blue),Card(color: Colors.redAccent),Card(color: Colors.blue),Card(color: Colors.redAccent),Card(color: Colors.blue)];
  final List<String> items;
  ScrollableScreen1({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
          );
        },
      ),
    );
  }
}

class ScrollableScreen extends StatelessWidget {
  final title = 'Long List';

  final List<int> colorCodes = <int>[
    800,
    500,
    100,
    800,
    500,
    100,
    800,
    500,
    100,
    800
  ];

  //ScrollableScreen({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        body: ListView.builder(
            //padding: const EdgeInsets.all(8),
            itemCount: colorCodes.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 150,
                color: Colors.amber[colorCodes[index]],
                child: Container(),
              );
            }),
      ),
    );
  }
}
