import 'package:flutter/material.dart';

class BottomPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 60.0,
        decoration: new BoxDecoration(
          color: Colors.blue,
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Center(
          child: Text('Create new task',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
    ]);
  }
}
