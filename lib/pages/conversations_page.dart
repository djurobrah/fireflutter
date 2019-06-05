import 'package:flutter/material.dart';
import 'package:fireflutter/models/database_service.dart';
import 'package:provider/provider.dart';

import 'package:fireflutter/models/message.dart';

class ConversationsPage extends StatelessWidget {
  final db = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Message>>.value(
      stream: db.streamMessages(),
      child: Conversations(),
    );
  }
}

class Conversations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var messages = Provider.of<List<Message>>(context);
    Widget content = CircularProgressIndicator();
    if (messages != null) {
      content = Text(messages.length.toString());
    }
    return Scaffold(
      body: Center(
        child: content,
      ),
    );
  }
}
