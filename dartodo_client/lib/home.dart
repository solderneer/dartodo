import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Dartodo"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Filter",
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

 class TodoListView extends StatefulWidget {
   @override
   _TodoListViewState createState() => _TodoListViewState();
 }
 
 class _TodoListViewState extends State<TodoListView> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('text'),
       ),
       body: Container(
         padding: EdgeInsets.all(32.0),
         child: Center(
           child: Column(
             children: <Widget>[],
           ),
         ),
       ),
     );
   }
 }