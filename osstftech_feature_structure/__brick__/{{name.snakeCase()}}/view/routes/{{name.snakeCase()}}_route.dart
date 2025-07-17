import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{project_name.snakeCase()}}/features/{{name.snakeCase()}}/view/pages/{{name.snakeCase()}}_page.dart';

final GoRoute {{name}}Route = GoRoute(
  path: {{name.pascalCase()}}Page.routeName,
  name: {{name.pascalCase()}}Page.routeName,
  pageBuilder: (context, state) => CustomTransitionPage(
    key: state.pageKey,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    child: {{name.pascalCase()}}Page(),
  ),
);
