import 'package:flutter/material.dart';

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
            seedColor: const Color.fromARGB(255, 23, 213, 156)),
      ),
    );
  }
}
