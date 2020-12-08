import 'package:flutter/material.dart';

class PlaceCards1 extends StatelessWidget {
  const PlaceCards1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: new Column(children: <Widget>[
          Card(
            //semanticContainer: true,
            //borderOnForeground: true,
            margin: EdgeInsets.all(20.0),
            elevation: 14.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: new Column(children: <Widget>[
              Container(
                width: 400,
                height: 200,
                child: new Column(children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border,
                      size: 40.0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Container(
                      height: 22.0,
                      width: 42.0,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: SizedBox(
                        child: Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ))
                ]),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/card1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              new ListTile(
                title: new Text('Perfume Workshop',
                    style: new TextStyle(fontWeight: FontWeight.w500)),
                subtitle: new Text('123 Swanston Street'),
              )
            ]),
          ),
          new Card(
            margin: EdgeInsets.all(20.0),
            elevation: 14.0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: new Column(children: <Widget>[
              //https://seopic.699pic.com/photo/30015/5133.jpg_wh1200.jpg
              //AspectRatio(
              //aspectRatio: 16 / 9,
              //child: Image.network(
              //'https://seopic.699pic.com/photo/30015/5133.jpg_wh1200.jpg',
              //fit: BoxFit.cover)),
              Container(
                width: 400,
                height: 200,
                child: new Column(children: <Widget>[
                  Container(
                    width: 400,
                    height: 150,
                    margin: EdgeInsets.all(5.0),
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite_border,
                      size: 40.0,
                      color: Colors.grey[350],
                    ),
                  ),
                  Container(
                      height: 22.0,
                      width: 42.0,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: SizedBox(
                        child: Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ))
                ]),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/card2.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              new ListTile(
                title: new Text('Perfume Workshop',
                    style: new TextStyle(fontWeight: FontWeight.w500)),
                subtitle: new Text('123 Swanston Street'),
              )
            ]),
          ),
        ]));
  }
}

class PlaceCards extends StatelessWidget {
  const PlaceCards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: new Column(children: <Widget>[
          Card(
              margin: EdgeInsets.all(20.0),
              elevation: 14.0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: new Column(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Container(
                      height: 150,
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                height: 22.0,
                                width: 42.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(child: null),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite_border,
                                size: 40.0,
                                color: Colors.grey[350],
                              ),
                            )
                          ]),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/card1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                  ]),
                  new ListTile(
                    title: new Text('Perfume Workshop',
                        style: new TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: new Text('123 Swanston Street'),
                  )
                ],
              )),
          Card(
              margin: EdgeInsets.all(20.0),
              elevation: 14.0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: new Column(
                children: <Widget>[
                  Stack(children: <Widget>[
                    Container(
                      height: 150,
                      width: double.infinity,
                      alignment: Alignment.topRight,
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin: EdgeInsets.all(10.0),
                                height: 22.0,
                                width: 42.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(child: null),
                            Container(
                              margin: EdgeInsets.all(10.0),
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.favorite_border,
                                size: 40.0,
                                color: Colors.grey[350],
                              ),
                            )
                          ]),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/card2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                  ]),
                  new ListTile(
                    title: new Text('Perfume Workshop',
                        style: new TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: new Text('123 Swanston Street'),
                  )
                ],
              )),
        ]));
  }
}
