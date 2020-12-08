import 'package:flutter/material.dart';

class DisplaySheet extends StatefulWidget {
  DisplaySheet({Key key}) : super(key: key);

  @override
  _DisplaySheetState createState() => _DisplaySheetState();
}

class _DisplaySheetState extends State<DisplaySheet> {
  final currencies = [
    'Euro',
    '	Albanian lek',
    'Algerian dinar',
    'Argentine peso',
    'Saint Helena pound',
    'Australian dollar',
    'Belize dollar'
  ];
  final List<String> items = [
    'Bulgarian lev',
    'Swiss franc',
    'Czech koruna',
    'Danish krone',
    'Euro',
    'Pounds sterling',
    'Croatian Kuna',
    'Georgian lari',
    'Hungarian forint',
    'Norwegian krone',
    'Polish zloty'
  ];
  final List<String> itemsSymbol = [
    'лв',
    'CHF',
    'Kč',
    'kr',
    '€',
    '£',
    'kn',
    '₾',
    'ft',
    'kr',
    'zł'
  ];
  final List<String> itemsCode = [
    'BGN',
    'CHF',
    'CZK',
    'DKK',
    'EUR',
    'GBP',
    'HRK',
    'GEL',
    'HUF',
    'NOK',
    'PLN'
  ];

  bool _isShow = false;
  bool _update = false;
  String symbols = '\$';
  String code = 'AUD';
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    return Scaffold(
        body: Container(
            height: 450.0,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: new Border.all(color: Colors.indigo[200], width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text('$symbols' + '40 ' + '$code',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                ),
                FlatButton(
                  //onPressed: _log,
                  onPressed: () {
                    setState(() {
                      _isShow = !_isShow;
                      showBottomSheet();
                    });
                  },
                  child: Text("AUD"),
                  color: Colors.blue,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            )));
  }

  Widget buildItem(BuildContext context, int index) {
    //设置分割线
    //if (index.isOdd) return new Divider();

    //设置字体样式
    TextStyle textStyle =
        new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0);
    //设置Padding
    return GestureDetector(
        onTap: () {
          onItemClick(index, '${itemsSymbol[index]}', '${itemsCode[index]}');
          print('Clicked ' +
              index.toString() +
              ' ${itemsSymbol[index]}' +
              '  ${itemsCode[index]}');
          symbols = '${itemsSymbol[index]}';
          code = '${itemsCode[index]}';
        },
        child: Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: new Border.all(color: Colors.indigo[200], width: 2),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: new Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                      //alignment: Alignment.centerRight,
                      child: Container(
                          padding: const EdgeInsets.all(15.0),
                          alignment: Alignment.centerRight,
                          child:
                              new Text('${items[index]}', style: textStyle))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.all(15.0),
                          alignment: Alignment.centerLeft,
                          child: new Text('${itemsSymbol[index]}',
                              style: textStyle)),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: new Border.all(
                              color: Colors.indigo[200], width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child:
                            new Text('${itemsCode[index]}', style: textStyle),
                      )
                    ],
                  ),
                ])));
  }

  void onItemClick(int index, String symbol, String code) {
    setState(() {
      _update = !_update;
    });
  }

  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: items.length, itemBuilder: buildItem));
      },
    );
  }
}
