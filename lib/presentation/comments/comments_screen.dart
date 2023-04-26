import 'package:flutter/material.dart';
import 'package:flutter_survival_architecture_sample/presentation/comments/comments_view_model.dart';
import 'package:provider/provider.dart';

class CommentsScreen extends StatefulWidget {
  final int postId;

  const CommentsScreen({
    Key? key,
    required this.postId,
  }) : super(key: key);

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<CommentsViewModel>();
      viewModel.loadComments(widget.postId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CommentsViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: viewModel.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                final comment = viewModel.comments[index];
                return ListTile(
                  title: Text(comment.name),
                  subtitle: Text(comment.body),
                );
              },
              itemCount: viewModel.comments.length,
            ),
    );
  }
}
