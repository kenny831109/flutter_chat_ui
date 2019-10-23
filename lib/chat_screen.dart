import 'package:flutter/material.dart';
import 'custom_list.dart';
import 'dragable_list.dart';
import 'models/user_model.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  ChatScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          user.name,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: DragableList(),
    );
  }
}
