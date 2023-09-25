import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserRegisterScreen extends StatelessWidget {
  const UserRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
