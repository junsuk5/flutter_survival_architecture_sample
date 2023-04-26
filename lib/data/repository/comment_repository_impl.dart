import 'dart:convert';

import 'package:flutter_survival_architecture_sample/domain/model/comment.dart';
import 'package:flutter_survival_architecture_sample/domain/repository/comment_repository.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Singleton(as: CommentRepository)
class CommentRepositoryImpl implements CommentRepository {
  @override
  Future<Comment> createCommentForPost(int postId, Comment comment) {
    // TODO: implement createCommentForPost
    throw UnimplementedError();
  }

  @override
  Future<void> deleteComment(int id) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<Comment> getComment(int id) {
    // TODO: implement getComment
    throw UnimplementedError();
  }

  @override
  Future<List<Comment>> getCommentsForPost(int postId) async {
    final http.Response response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/comments?postId=$postId'));

    final Iterable list = jsonDecode(response.body);
    return list.map((e) => Comment.fromJson(e)).toList();
  }

  @override
  Future<Comment> updateComment(Comment comment) {
    // TODO: implement updateComment
    throw UnimplementedError();
  }
}
