import 'package:flutter/material.dart';
import 'package:flutter_survival_architecture_sample/presentation/posts/posts_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostsViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: viewModel.posts.length,
        itemBuilder: (context, index) {
          final post = viewModel.posts[index];
          return ListTile(
            title: Text(post.toString()),
            onTap: () {
              context.push('/comments/${post.id}');
            },
          );
        },
      ),
    );
  }
}
