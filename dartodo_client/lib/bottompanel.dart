import 'package:flutter/material.dart';

class BottomPanel extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(5.0),
          topRight: const Radius.circular(5.0),
        )
      ),
      child: Column(
        children: <Widget> [
          Text('Hi this is sample header'),
          Text('Input Element 1'),
          Text('Input Element 2'),
        ],
      ),
    );
  }
}