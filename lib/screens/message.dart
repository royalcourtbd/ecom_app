import 'package:ecom_app/widgets/message_bubble.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MessageBubble()
      ],
    );
  }
}
