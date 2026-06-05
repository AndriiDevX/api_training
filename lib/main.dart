import 'package:api_training/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'api_service.dart';
import 'screens/posts_screen.dart';
import 'package:provider/provider.dart';

void main() {
  ApiService().fetchData();
  runApp(
    ChangeNotifierProvider(
        create: (_) => PostProvider(),
        child: const MainApp()
      )
  );
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
