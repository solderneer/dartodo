import 'package:flutter/material.dart';
import 'package:badge/badge.dart';

class ListItem extends StatelessWidget {
  final String name;
  final bool favorite;
  final List<String> tags;
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
          leading: Icon(Icons.favorite_border),
          title: Text(this.name),
        ),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) {
            final tag = tags[index];
            return Badge(
              value: tag,
              child: null
            );
          }
        )
      ],
    ));
  }
}