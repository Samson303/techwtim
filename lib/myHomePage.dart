import 'package:flutter/material.dart';
import 'package:techwtim/post.dart';
import 'package:techwtim/textInputWidget.dart';
import 'package:techwtim/postList.dart';

class MyhomePage extends StatefulWidget {
  final String name;

  MyhomePage(this.name);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog App test 1'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost)
        ],
      ),
    );
  }
}
