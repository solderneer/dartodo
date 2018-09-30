import 'package:flutter/material.dart';

import './badge.dart';
import '../utilities/datatypes.dart';

class TagInput extends StatelessWidget {
  final List<TagType> taglist;
  final TagCallback _callback;

  TagInput(this.taglist, this._callback);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Tags:',
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          )),
      Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: taglist.map((item) {
              return GestureDetector(
                child: Badge(item.content, item.color),
                onTap: () => _callback(item),
              );
            }).toList(),
          )),
    ]);
  }
}
