import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final GlobalKey _key;
  final String _title;
  final String _hint;
  final int _maxlines;

  TextInput(this._title, this._hint, this._maxlines, this._key);

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
        child: TextFormField(
            key: _key,
            maxLines: _maxlines,
            decoration: InputDecoration(
                hintText: _hint, filled: true, fillColor: Colors.grey[300])),
      ),
    ]);
  }
}
