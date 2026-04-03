import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model.dart';

class ApiService {
  Future<List<Post>> fetchData() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/posts'));
    final data = jsonDecode(response.body);
    final List posts = data['posts'];
    final List<Post> postList = posts.map((e) => Post.fromJson(e)).toList();

    print(postList[0].title);

    print(data['posts'][0]['title']);

    return postList;
  }
}

void main() async {
  await ApiService().fetchData();
}
