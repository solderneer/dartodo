import 'package:flutter/material.dart';

import 'listitem.dart';
import 'bottompanel.dart';
import 'datatypes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TodoItem> todoList = [];

  void _onCreate() {
    setState(() {
      todoList.add(TodoItem(
        title: 'Revise for math test',
        description: 'It is tomorrow',
        favorite: false,
        taglist: [
          TagType(content: 'Work', color: Colors.red),
          TagType(content: 'School', color: Colors.green)
        ],
      ));
    });

    // _modalBottomSheet();
  }

  void _modalBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return BottomPanel();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dartodo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              return;
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            tooltip: 'Filter',
            onPressed: () {
              return;
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            tooltip: 'Favorites',
            onPressed: () {
              return;
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(todoList[index].title),
            onDismissed: (direction) {
              setState(() {
                todoList.removeAt(index);
              });
            },
            child: ListItem(
                name: todoList[index].title,
                favorite: todoList[index].favorite,
                tags: todoList[index].taglist),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _onCreate();
        },
      ),
    );
  }
}
