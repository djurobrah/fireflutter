class Message {
  final String text;
  final String sender;
  final DateTime timeSent;

  Message({this.text, this.sender, this.timeSent});

  factory Message.fromMap(Map data) {
    return Message(
      text: data['text'],
      sender: data['sender'],
      timeSent: data['timeSent'],
    );
  }
}
