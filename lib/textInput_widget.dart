import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Divider(),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.photo_camera),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration:
                        InputDecoration.collapsed(hintText: "Send a message.."),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
