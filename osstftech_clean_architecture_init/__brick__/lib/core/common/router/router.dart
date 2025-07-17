import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name}}/core/common/service/navigation_service.dart';
import 'package:{{name}}/core/common/service/service_locator.dart';
import 'package:{{name}}/core/common/widgets/error_widget.dart';
import 'package:{{name}}/features/home/view/pages/home_page.dart';
import 'package:{{name}}/features/home/view/routes/home_route.dart';

// Define your routes
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: HomePage.routeName,
    // refreshListenable: listenable,
    navigatorKey: sl<NavigationService>().navigatorKey,
    errorBuilder: (context, state) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press
                // Navigator.pop(context);
                context.goNamed(HomePage.routeName);
              },
            ),
            title: const Text("Error Occurred!"),
          ),
          body: Center(child: ErrorPageWidget(message: state.error.toString())),
        ),
      );
    },
    routes: [
      homeRoute,
      // Add more routes here
    ],
  );
});
