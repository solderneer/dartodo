import 'package:flutter/material.dart';

import './taginput.dart';
import '../utilities/datatypes.dart';

class BottomPanel extends StatefulWidget {
  @override
  _BottomPanelState createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel> {
  final List<TagType> taglist = [
    TagType(content: 'Work', color: Colors.red),
    TagType(content: 'School', color: Colors.green)
  ];

  String _title;
  String _description;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Center(
          child: Text('Create new task',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
      Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Title:',
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          )),
      Container(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
              hintText: 'Enter title here',
              filled: true,
              fillColor: Colors.grey[300]),
          onChanged: (input) {
            setState(() => _title = input);
          },
        ),
      ),
      Container(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Description:',
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          )),
      Container(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
              hintText: 'Enter description here',
              filled: true,
              fillColor: Colors.grey[300]),
          onChanged: (input) {
            setState(() => _description = input);
          },
        ),
      ),
      TagInput(taglist, (item) {
        print(item);
        print(_title);
        print(_description);
      }),
      Container(
          alignment: Alignment.center,
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
          height: 30.0,
          decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          child: Text(
            'Create',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )),
    ]);
  }
}
