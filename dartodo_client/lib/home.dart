import 'package:flutter/material.dart';
import 'package:badge/badge.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dartodo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Filter",
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            tooltip: "Favorites",
            onPressed: null,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          ListItem(
            name: "Do assignment 3",
            favorite: false,
            tags: ["Work", "Stuff"],
          ),
          ListItem(
            name: "Do assignment 3",
            favorite: false,
            tags: ["Work", "Stuff"],
          ),
        ],
      ),
    );
  }
}

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
        Badge(
          value: "Work",
          child: Text(""),
        ),
      ],
    ));
  }
}

class ListData {
  final String name;
  final bool favorite;
  final List<String> tags;

  ListData(this.name, this.favorite, this.tags);
}
