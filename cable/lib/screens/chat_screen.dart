import 'package:flutter/material.dart';
import 'package:cable/widgets/chat_messages.dart';
import 'package:cable/widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 241, 166),
        title: const Text('Cable'), //beautify, different font and style
        actions: [
          IconButton(
              onPressed: () {
                //Signout here
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.blueGrey.shade900,
              ))
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatMessages(),
          ),
          NewMessage(),
        ],
      ),
    );
  }
}
