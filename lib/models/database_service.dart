import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireflutter/models/conversation.dart';
import 'dart:async';

import 'package:fireflutter/models/message.dart';

class DatabaseService {
  final Firestore _db = Firestore.instance;

  Stream<List<Conversation>> streamConversationsForUser(String username) {
    var ref = _db
        .collection('conversations')
        .where('participants', arrayContains: username);
    return ref.snapshots().map((list) =>
        list.documents.map((doc) => Conversation.fromFirestore(doc)).toList());
  }

  Stream<List<Message>> streamMessages() {
    var ref = _db.collection('conversations');
    return ref.snapshots().map((list) =>
        list.documents.map((doc) => Message.fromMap(doc.data)).toList());
  }
}
