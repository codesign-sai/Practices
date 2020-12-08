import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DataSelector extends StatefulWidget {
  DataSelector({Key key}) : super(key: key);
  DateTime selectedDate = DateTime.now();

  @override
  _DataSelectorState createState() => _DataSelectorState();
}

class _DataSelectorState extends State<DataSelector> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RaisedButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.indigo[100],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: Colors.white,
            onPressed: () => _selectDate(context), // Refer step 3
            child: Icon(Icons.calendar_today),
            //color: Colors.greenAccent,
          ),
          Text(
            '    ',
            style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
          ),
          Container(
            //shape: RoundedRectangleBorder(side: BorderSide(color:COlors.indigo[100]))),
            decoration: BoxDecoration(
              border: new Border.all(color: Colors.indigo[100], width: 0.5),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              //"${selectedDate.toLocal()}".split(' ')[0],
              '${formatDate(selectedDate, [dd, ' ', M, ' ', yyyy])}',
              //'today',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      )),
    );
  }
}
