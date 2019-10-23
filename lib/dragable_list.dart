import 'package:chat_ui/models/message_model.dart';
import 'package:flutter/material.dart';

class DragableList extends StatefulWidget {
  @override
  _DragableListState createState() => _DragableListState();
}

class _DragableListState extends State<DragableList> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: <Widget>[
        for (final chat in chats)
          Text(
            chat.user.name,
            key: ValueKey(chat.user.id),
          ),
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          var temp = chats.removeAt(oldIndex);
          chats.insert(newIndex, temp);
        });
      },
    );
  }
}
