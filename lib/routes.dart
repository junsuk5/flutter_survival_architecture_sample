import 'package:flutter_survival_architecture_sample/di/di_setup.dart';
import 'package:flutter_survival_architecture_sample/presentation/comments/comments_screen.dart';
import 'package:flutter_survival_architecture_sample/presentation/comments/comments_view_model.dart';
import 'package:flutter_survival_architecture_sample/presentation/posts/posts_screen.dart';
import 'package:flutter_survival_architecture_sample/presentation/posts/posts_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final routes = GoRouter(
  initialLocation: '/posts',
  routes: [
    GoRoute(
      path: '/posts',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => getIt<PostsViewModel>(),
          child: const PostsScreen(),
        );
      },
    ),
    GoRoute(
      path: '/comments/:postId',
      builder: (context, state) {
        int postId = int.parse(state.params['postId']!);
        return ChangeNotifierProvider(
          create: (_) => getIt<CommentsViewModel>(),
          child: CommentsScreen(postId: postId),
        );
      },
    ),
  ],
);
