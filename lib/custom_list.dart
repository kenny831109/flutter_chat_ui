import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          if (index % 2 == 0) {
            return Card(
              child: ListTile(
                title: Text('123123'),
                subtitle: Text('subTitle'),
                leading: FlutterLogo(
                  size: 100,
                ),
                isThreeLine: true,
              ),
              margin: EdgeInsets.all(10),
            );
          } else {
            return Dismissible(
              direction: DismissDirection.endToStart,
              onDismissed: (diration) {
                print(diration); 
              },
              key: ValueKey('key'),
              child: Card(
                child: ListTile(
                  trailing: Text('ewrww'),
                  title: Text('ewwew'),
                  subtitle: Container(
                    height: 30,
                    child: Text(
                      'dewdwedweodjwoejdowejdojwedjowdlsmlsmdlsldsldmlsjdwedjwiodjo',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                margin: EdgeInsets.all(10),
              ),
            );
          }
        },
      );
  }
}