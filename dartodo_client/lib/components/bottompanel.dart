import 'package:flutter/material.dart';

class BottomPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10.0, bottom: 5.0, left: 10.0),
              child: Text(
                'Create new task',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              )),
          Divider(
            color: Colors.black26,
          ),
          Container(
            
          )
        ],
      ),
    );
  }
}
