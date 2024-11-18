import 'package:flutter/material.dart';
import 'feauters/subscription/ui/subscription_screen.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MontserratAlternates',
        useMaterial3: true,
      ),
      home: const SubscriptionScreen(),
    );
  }
}
