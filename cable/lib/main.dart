import 'package:cable/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:cable/screens/auth_screen.dart';

void main() {
  runApp(const Cable());
}

class Cable extends StatefulWidget {
  const Cable({super.key});

  @override
  State<Cable> createState() {
    return _CableState();
  }
}

class _CableState extends State<Cable> {
  Widget? currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = AuthScreen(changeScreen);
  }

  void changeScreen() {
    setState(() {
      currentScreen = const ChatScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cable',
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      home: currentScreen,
    );
  }
}
