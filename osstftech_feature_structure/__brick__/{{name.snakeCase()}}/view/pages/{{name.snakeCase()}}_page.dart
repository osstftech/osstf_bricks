import 'package:flutter/material.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  static const String routeName = '/{{name.paramCase()}}';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('{{name.pascalCase()}} Page')));
  }
}