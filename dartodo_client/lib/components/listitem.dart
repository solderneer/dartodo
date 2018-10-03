import 'package:flutter/material.dart';

import '../utilities/datatypes.dart';

class ListItem extends StatelessWidget {
  final String name;
  final bool favorite;
  final List<TagType> tags;
  final Widget child;

  ListItem({
    Key key,
    this.name,
    this.favorite: false,
    this.tags,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          trailing: Icon(Icons.favorite_border),
          title: Text(this.name),
          subtitle: Container(
            margin: const EdgeInsets.only(
                left: 0.0, right: 2.0, top: 6.0, bottom: 0.0),
            child: Wrap(
              spacing: 4.0,
              runSpacing: 4.0,
              children: tags
                  .map((item) => Chip(
                        label: Text(item.content),
                        labelStyle: TextStyle(color: Colors.white),
                        backgroundColor: item.color,
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    ));
  }
}
