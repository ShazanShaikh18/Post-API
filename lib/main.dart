import 'package:flutter/material.dart';
import 'package:post_api_3/post_api_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostApiScreen(),
    );
  }
}
