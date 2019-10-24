import 'package:chat_ui/message_row.dart';
import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/textInput_widget.dart';
import 'package:flutter/material.dart';
import 'models/user_model.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  ChatScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          user.name,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 10),
                  itemCount: messages.length,
                  itemBuilder: (ctx, index) {
                    final message = messages[index];
                    final isMe = message.user.id == currentUser.id;
                    return MessageRow(isMe, message);
                  },
                ),
              ),
            ),
          ),
          TextInputWidget(),
          // Container(
          //   color: Colors.white,
          //   height: MediaQuery.of(context).viewPadding.bottom,
          // ),
        ],
      ),
    );
  }
}
