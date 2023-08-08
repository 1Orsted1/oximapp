import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oximapp_v2/aplication/sign_in/sign_in_bloc.dart';
import 'package:oximapp_v2/presentation/core/router/app_router.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.read<SignInBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              auth.add(const SignInEvent.setSignInStatus(isLogged: true));
              context.router.push(const HomeRoute());
            },
            child: const Text("Enter")),
      ),
    );
  }
}
