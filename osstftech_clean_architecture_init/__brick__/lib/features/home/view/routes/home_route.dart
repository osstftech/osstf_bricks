import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name}}/features/home/view/pages/home_page.dart';

final GoRoute homeRoute = GoRoute(
  path: HomePage.routeName,
  name: HomePage.routeName,
  pageBuilder: (context, state) => CustomTransitionPage(
    key: state.pageKey,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    child: HomePage(),
  ),
);
