import 'package:flutter_survival_architecture_sample/domain/model/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();

  Future<Post> getPost(int id);

  Future<Post> createPost(Post post);

  Future<Post> updatePost(Post post);

  Future<void> deletePost(int id);
}
