import 'package:flutter/material.dart';
import 'api_service.dart';
import 'screens/posts_screen.dart';

void main() {
  ApiService().fetchData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostsScreen()
    );
  }
}
