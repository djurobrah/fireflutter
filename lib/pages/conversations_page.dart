import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireflutter/models/conversation.dart';
import 'package:flutter/material.dart';
import 'package:fireflutter/models/database_service.dart';
import 'package:provider/provider.dart';

class ConversationsPage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  final db = DatabaseService();

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<FirebaseUser>(context);
    print(user.providerId); //firebase is providerID
    return StreamProvider<List<Conversation>>.value(
      stream: db.streamConversationsForUser(user.providerId),
      child: Conversations(),
    );
  }
}

class Conversations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var conversations = Provider.of<List<Conversation>>(context);
    Widget content = CircularProgressIndicator();
    if (conversations != null) {
      content = _buildConversationsList(context, conversations);
    }
    return Scaffold(
      body: Center(
        child: content,
      ),
    );
  }

  Widget _buildConversationsList(BuildContext context, List<Conversation> conversations)
  {
    return ListView.builder(
      itemCount: conversations.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(conversations[index].participants.toString()),
          ),
        );
      },
    );
  }
}
