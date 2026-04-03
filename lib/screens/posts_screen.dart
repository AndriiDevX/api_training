import 'package:flutter/material.dart';
import 'package:api_training/model.dart';
import 'package:api_training/api_service.dart'; 

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {

  List<Post> posts = [];

  @override
  void initState() {
    super.initState();
    loadPosts();
  }

  void loadPosts() async{
    final data = await ApiService().fetchData();

    setState(() {
      posts = data;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Center(
        child: posts.isEmpty
        ? Center(child: CircularProgressIndicator(),)
        : ListView.builder(
          itemCount: posts.length,
          itemBuilder:  (context, index) {
            final post = posts[index];

            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          }
          )

      ),

    );
  }
}