import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cable'), //beautify, different font and style
        actions: [
          IconButton(
              onPressed: () {
                //Signout here
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: const Color.fromARGB(255, 38, 241, 166),
              ))
        ],
      ),
      body: const Center(
        child: Text('Logged in'),
      ),
    );
  }
}
