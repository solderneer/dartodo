import 'package:flutter/material.dart';

class BottomPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(30.0),
        topRight: const Radius.circular(30.0),
      )),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                'Create new task',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              )),
          Divider(
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
