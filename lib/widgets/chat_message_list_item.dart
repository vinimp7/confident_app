import 'package:confidentapp/models/chat_message.dart';
import 'package:flutter/material.dart';

class ChatMessageListItem extends StatelessWidget {
  final ChatMessage chatMessage;

  ChatMessageListItem({this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return chatMessage.type == ChatMessageType.sent
        ? _showSentMessage()
        : _showReceivedMessage();
  }

  Widget _showSentMessage({EdgeInsets padding, TextAlign textAlign}) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(64.0, 0.0, 8.0, 0.0),
      trailing: CircleAvatar(child: Text(chatMessage.name.toUpperCase()[0])),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 0.0),
        child: Text(chatMessage.name, textAlign: TextAlign.right),
      ),
      subtitle: Container(
        child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(chatMessage.text, textAlign: TextAlign.right),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Widget _showReceivedMessage() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 64.0, 0.0),
      leading: CircleAvatar(child: Text(chatMessage.name.toUpperCase()[0])),
      title: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 8.0, 0.0, 0.0),
        child: Text(chatMessage.name, textAlign: TextAlign.left),
      ),
      subtitle: Container(
        child: Card(
          color: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(chatMessage.text, textAlign: TextAlign.left),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
