import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplitTheScreen extends StatelessWidget {
  const SplitTheScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Column(
          children: <Widget>[
            Expanded(
              flex: 25, // 60% of space => (6/(6 + 4))
              child: new Row(
                children: <Widget>[
                  Expanded(
                    flex: 60, // 40% of space
                    child: Container(
                      color: Colors.brown[700],
                    ),
                  ),
                  Expanded(
                    flex: 40, // 40% of space
                    child: Container(
                      color: Colors.blueGrey[800],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 75, // 40% of space
              child: new Row(
                children: <Widget>[
                  Expanded(
                    flex: 20, // 40% of space
                    child: Container(
                      color: Colors.yellow[800],
                    ),
                  ),
                  Expanded(
                    flex: 50, // 40% of space
                    child: Container(
                      color: Colors.teal[800],
                    ),
                  ),
                  Expanded(
                    flex: 30, // 40% of space
                    child: Container(
                      color: Colors.deepOrange[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
