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
          IconButton(
            icon: Icon(Icons.favorite),
            tooltip: "Favorites",
            onPressed: null,
          )
        ],
      ),
      body: ListItem(
        name: 'Sudharshan',
        favorite: false,
        tags: []
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
   Widget build(BuildContext context){
     return ListTile(
      leading: Icon(Icons.favorite_border),
      title: Text(name),
    );
   }
 }

 class ListData {
   final String name;
   final bool favorite;
   final List<String> tags;

   ListData(this.name, this.favorite, this.tags);
 }