import 'package:flutter/material.dart';

class TagType {
  final String name;
  final Color color;

  TagType({@required this.name, @required this.color});
}

class TodoItem {
  final String title;
  final String description;
  final bool favorite;
  final List<TagType> taglist;

  TodoItem(
      {@required this.title,
      @required this.description,
      @required this.favorite,
      @required this.taglist});
}
