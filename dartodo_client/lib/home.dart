import 'package:flutter/material.dart';

import 'listitem.dart';
import 'datatypes.dart';

class Home extends StatelessWidget {
  final List<TodoItem> _todolist = [
    TodoItem(
        title: 'Do Math Assignment',
        description: 'Please do your math assignment',
        favorite: false,
        taglist: [
          TagType(content: 'Work', color: Colors.red),
          TagType(content: 'School', color: Colors.green)
        ]),
    TodoItem(
        title: 'Cut my hair',
        description: 'Need to get a haircut, Murali is bothering me',
        favorite: false,
        taglist: [TagType(content: 'Personal', color: Colors.blue)
        ]), TodoItem(
        title: 'Apple service center',
        description: 'MY COMPUTER STOPPED WORKING',
        favorite: false,
        taglist: [TagType(content: 'None', color: Colors.grey)
        ]),

  ];
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
        itemCount: _todolist.length,
        itemBuilder: (context, index) {
          return ListItem(
              name: _todolist[index].title,
              favorite: _todolist[index].favorite,
              tags: _todolist[index].taglist);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
