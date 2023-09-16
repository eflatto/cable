import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewMessageState();
  }
}

class _NewMessageState extends State<NewMessage> {
  var _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() {
    final enteredMessage = _messageController.text;

    if (enteredMessage.trim().isEmpty) {
      return;
    }

    // send to Firebase

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //add padding
      children: [
        Expanded(
          child: TextField(
            controller: _messageController,
            decoration: const InputDecoration(
                labelText: 'Send a message...', fillColor: Colors.cyan),
          ),
        ),
        IconButton(
          color: const Color.fromARGB(255, 38, 241, 166),
          icon: const Icon(
            Icons.send,
          ),
          onPressed: _submitMessage,
        ),
      ],
    );
  }
}
