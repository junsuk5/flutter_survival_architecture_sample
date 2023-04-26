// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_survival_architecture_sample/data/repository/comment_repository_impl.dart'
    as _i4;
import 'package:flutter_survival_architecture_sample/data/repository/post_repository_impl.dart'
    as _i7;
import 'package:flutter_survival_architecture_sample/domain/repository/comment_repository.dart'
    as _i3;
import 'package:flutter_survival_architecture_sample/domain/repository/post_repository.dart'
    as _i6;
import 'package:flutter_survival_architecture_sample/presentation/comments/comments_view_model.dart'
    as _i5;
import 'package:flutter_survival_architecture_sample/presentation/posts/posts_view_model.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.CommentRepository>(_i4.CommentRepositoryImpl());
    gh.factory<_i5.CommentsViewModel>(
        () => _i5.CommentsViewModel(gh<_i3.CommentRepository>()));
    gh.singleton<_i6.PostRepository>(_i7.PostRepositoryImpl());
    gh.factory<_i8.PostsViewModel>(
        () => _i8.PostsViewModel(gh<_i6.PostRepository>()));
    return this;
  }
}
