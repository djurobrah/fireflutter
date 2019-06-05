import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

import 'package:fireflutter/models/message.dart';

class DatabaseService {
  final Firestore _db = Firestore.instance;

  Stream<List<Message>> streamMessages() {
    var ref = _db.collection('conversations');
    return ref.snapshots().map((list) =>
        list.documents.map((doc) => Message.fromMap(doc.data)).toList());
  }
}
