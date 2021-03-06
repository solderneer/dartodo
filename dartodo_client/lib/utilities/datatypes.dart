import 'package:flutter/material.dart';

typedef void TagCallback(TagSelected item);
typedef void CreateCallback(String title, String description, List<TagSelected> taglist);

class TagType {
  final String content;
  final Color color;

  TagType({@required this.content, @required this.color});
}
class TagSelected {
  final String content;
  final Color color;
  bool enabled;

  TagSelected({@required this.content, @required this.color, @required this.enabled});
}

class TodoItem {
  final String key;
  final String title;
  final String description;
  final bool favorite;
  final List<TagType> taglist;

  TodoItem(
      {@required this.key,
      @required this.title,
      @required this.description,
      @required this.favorite,
      @required this.taglist});
}
