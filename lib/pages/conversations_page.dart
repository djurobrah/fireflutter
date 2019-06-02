import 'package:flutter/material.dart';

class ConversationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Conversations page...",
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
              child: Text("Log out"),
              onPressed: ()
              {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}