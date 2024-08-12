import 'package:flutter/material.dart';
import '../pages/swipe_animation_demo.dart';
import '../themes/main_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeMain,
      debugShowCheckedModeBanner: false,
      home: const SwipeAnimationDemo(),
    );
  }
}
