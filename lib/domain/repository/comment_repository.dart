import 'package:flutter_survival_architecture_sample/domain/model/comment.dart';

abstract class CommentRepository {
  Future<List<Comment>> getCommentsForPost(int postId);

  Future<Comment> getComment(int id);

  Future<Comment> createCommentForPost(int postId, Comment comment);

  Future<Comment> updateComment(Comment comment);

  Future<void> deleteComment(int id);
}
