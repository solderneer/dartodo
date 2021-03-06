import 'package:flutter/material.dart';
import 'package:rounded_modal/rounded_modal.dart';

import '../components/listitem.dart';
import '../components/bottompanel.dart';
import '../utilities/datatypes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<TagType> taglist = [
    TagType(content: 'Work', color: Colors.red),
    TagType(content: 'School', color: Colors.green)
  ];
  List<TodoItem> todoList = [];
  var keyGen = 0;

  void _onCreate() {
    _modalBottomSheet();
  }

  void _modalBottomSheet() {
    showRoundedModalBottomSheet(
      context: context,
      radius: 20.0, // This is the default
      color: Colors.white, // Also default
      builder: (context) =>
          BottomPanel(taglist, (title, description, tagselected) {
            setState(() {
              todoList.add(TodoItem(
                key: keyGen.toString(),
                title: title,
                description: description,
                favorite: false,
                taglist: tagselected
                    .where((input) => input.enabled)
                    .map((input) =>
                        TagType(content: input.content, color: input.color))
                    .toList(),
              ));
            });

            keyGen++;
            Navigator.pop(context);
          }),
    );
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
            key: Key(todoList[index].key),
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
