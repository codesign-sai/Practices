import 'package:flutter/material.dart';

class PaintIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Paint Icon',
        //home: new HelloWord()

        home: Scaffold(
            body: SafeArea(
                child: Container(
                    //constraints: BoxConstraints.tightFor(width: 80.0, height: 120.0),

                    child: Column(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2,
            //color: Colors.red,
            alignment: Alignment.topRight,
            child: Container(
              height: 100.0,
              width: 80.0,
              color: Colors.grey[200],
              child: Column(children: <Widget>[
                Icon(Icons.star, size: 60.0),
                Text('globe')
              ]),
              //child: Text('globe'),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.blue[600],
          ),
          Container(
              color: Colors.grey[200],
              margin: EdgeInsets.symmetric(vertical: 100, horizontal: 0),
              //alignment: Alignment(0, 0),

              child: Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Icon(Icons.bookmark, size: 60.0),
                          Text('address_book')
                        ]),
                        Column(children: <Widget>[
                          Icon(Icons.bookmark_border, size: 60.0),
                          Text('gaddress_book')
                        ]),
                        Column(children: <Widget>[
                          Icon(Icons.bookmark, size: 60.0),
                          Text('address_book')
                        ]),
                        Column(children: <Widget>[
                          Icon(Icons.bookmark_border, size: 60.0),
                          Text('address_book')
                        ]),
                      ])))
        ])))));
  }
}
