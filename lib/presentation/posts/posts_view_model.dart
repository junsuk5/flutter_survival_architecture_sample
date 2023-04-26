import 'package:flutter/material.dart';
import 'package:flutter_survival_architecture_sample/domain/model/post.dart';
import 'package:flutter_survival_architecture_sample/domain/repository/post_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostsViewModel extends ChangeNotifier {
  final PostRepository _postRepository;

  PostsViewModel(this._postRepository) {
    _loadPosts();
  }

  List<Post> _posts = [];

  List<Post> get posts => _posts;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> _loadPosts() async {
    _isLoading = true;
    notifyListeners();
    _posts = await _postRepository.getPosts();
    _isLoading = false;
    notifyListeners();
  }
}
