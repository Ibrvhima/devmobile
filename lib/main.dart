import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const WireframeApp());
}

class WireframeApp extends StatelessWidget {
  const WireframeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wireframe Facebook',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
      ),
      home: const ProfileScreen(),
    );
  }
}
