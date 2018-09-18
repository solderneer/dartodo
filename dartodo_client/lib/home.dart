import 'package:flutter/material.dart';

import 'listitem.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Dartodo"),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: () {
              return;
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            tooltip: "Filter",
            onPressed: () {
              return;
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            tooltip: "Favorites",
            onPressed: () {
              return;
            },
          ),
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
            tags: [],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}