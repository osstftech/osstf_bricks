import 'package:flutter/material.dart';

///Display Generic error message in app with separate page
class ErrorPageWidget extends StatelessWidget {
  final String? message;
  const ErrorPageWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) => Container(
    color: Colors.redAccent,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message!, style: const TextStyle(color: Colors.white)),
      ),
    ),
  );
}
