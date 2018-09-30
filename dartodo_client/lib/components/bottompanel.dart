import 'package:flutter/material.dart';

import './textinput.dart';
import './taginput.dart';

class BottomPanel extends StatelessWidget {
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
      TextInput('Title:', 'Enter title', 1),
      TextInput('Description:', 'Enter description', 3),
      TagInput(),
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
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
