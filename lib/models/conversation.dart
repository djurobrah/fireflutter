import 'package:cloud_firestore/cloud_firestore.dart';

class Conversation {
  final String id;
  final List<dynamic> participants;

  Conversation({
    this.id,
    this.participants,
  });

  factory Conversation.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;

    return Conversation(
        id: doc.documentID,
        participants: data['participants'] ?? [],
    );
  }
}
