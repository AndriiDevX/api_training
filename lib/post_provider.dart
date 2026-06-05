import 'package:api_training/api_service.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class PostProvider extends ChangeNotifier {
  List<Post> posts = [];

  Future<void> loadPosts() async{
    final data = await ApiService().fetchData();
    posts = data;
    notifyListeners();
  }
}