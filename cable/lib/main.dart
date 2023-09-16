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
            seedColor: const Color.fromARGB(255, 56, 223, 181)),
      ),
      home: const AuthScreen(),
    );
  }
}
