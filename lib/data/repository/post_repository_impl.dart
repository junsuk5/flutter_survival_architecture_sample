import 'dart:convert';

import 'package:flutter_survival_architecture_sample/domain/model/post.dart';
import 'package:flutter_survival_architecture_sample/domain/repository/post_repository.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@Singleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  @override
  Future<Post> createPost(Post post) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<void> deletePost(int id) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Post> getPost(int id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    final Iterable list = jsonDecode(response.body);
    return list.map((e) => Post.fromJson(e)).toList();
  }

  @override
  Future<Post> updatePost(Post post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
