import 'package:flutter/material.dart';

import '../utilities/datatypes.dart';

class TextInput extends StatelessWidget {
  final String _title;
  final String _hint;
  final int _maxlines;

  TextInput(this._title, this._hint, this._maxlines);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            _title,
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          )),
      Container(
        padding: EdgeInsets.all(10.0),
        child: TextField(
            maxLines: _maxlines,
            decoration: InputDecoration(
                hintText: _hint, filled: true, fillColor: Colors.grey[300])),
      ),
    ]);
  }
}
