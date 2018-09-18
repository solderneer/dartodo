import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final _text;

  Badge(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 5.0, top: 5.0),
      margin: const EdgeInsets.all(2.0),
      decoration: new BoxDecoration(
          color: Colors.green, //new Color.fromRGBO(255, 0, 0, 0.0),
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(5.0),
              topRight: const Radius.circular(5.0),
              bottomLeft: const Radius.circular(5.0),
              bottomRight: const Radius.circular(5.0))),
      alignment: Alignment.center,
      child: Text(
        this._text,
        style: TextStyle(color: Colors.white, fontSize: 10.0),
      ),
    );
  }
}
