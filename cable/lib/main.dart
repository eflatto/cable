import 'package:cable/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:cable/screens/auth_screen.dart';

void main() {
  runApp(const Cable());
}

class Cable extends StatelessWidget {
  const Cable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cable',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 12, 12, 12)),
      ),
      home: const AuthScreen(),
      home: AuthScreen(),
    );
  }
}
