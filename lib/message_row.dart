import 'package:flutter/material.dart';
import 'models/message_model.dart';

class MessageRow extends StatelessWidget {
  final bool isMe;
  final Message message;

  MessageRow(this.isMe, this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    )
                  : BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
            ),
            padding: EdgeInsets.all(8.0),
            margin: isMe
                ? EdgeInsets.only(left: 80, top: 8, bottom: 8)
                : EdgeInsets.only(right: 80, top: 8, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.time,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
                Text(
                  message.text,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
