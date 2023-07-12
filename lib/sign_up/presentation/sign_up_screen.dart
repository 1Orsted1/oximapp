import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        child: Center(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
