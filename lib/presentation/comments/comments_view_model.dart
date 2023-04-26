import 'package:flutter/material.dart';
import 'package:flutter_survival_architecture_sample/domain/model/comment.dart';
import 'package:flutter_survival_architecture_sample/domain/repository/comment_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CommentsViewModel extends ChangeNotifier {
  final CommentRepository _commentRepository;

  CommentsViewModel(
    this._commentRepository,
  );

  List<Comment> _comments = [];

  List<Comment> get comments => _comments;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> loadComments(int postId) async {
    _isLoading = true;
    notifyListeners();
    _comments = await _commentRepository.getCommentsForPost(postId);
    _isLoading = false;
    notifyListeners();
  }
}
