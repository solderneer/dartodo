import 'package:flutter/material.dart';

import './taginput.dart';
import '../utilities/datatypes.dart';

class BottomPanel extends StatefulWidget {
  final List<TagType> taglist;
  BottomPanel(this.taglist);

  @override
  _BottomPanelState createState() => _BottomPanelState(taglist);
}

class _BottomPanelState extends State<BottomPanel> {
  List<TagSelected> _tagselected;
  String _title;
  String _description;

  _BottomPanelState(List<TagType> taglist) {
    _tagselected = taglist
        .map((item) => TagSelected(
            content: item.content, color: item.color, enabled: false))
        .toList();
    print(_tagselected);
  }

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
      TagInput(_tagselected, (item) {
        setState(() => item.enabled = (item.enabled) ? false : true);
      }),
      Container(
          alignment: Alignment.center,
          margin:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0, bottom: 10.0),
          height: 35.0,
          decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.all(Radius.circular(7.0))),
          child: Text(
            'Create',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          )),
    ]);
  }
}
