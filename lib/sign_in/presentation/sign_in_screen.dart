import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

import '../../core/presentation/app_router.dart';
import '../../i18n/strings.g.dart';
import '../application/sign_in_bloc.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final auth = context.watch<SignInBloc>();
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        l.d("h");
        if (state.isLogged! == true) {
          l.d("i");
          context.router.replace(const HomeRoute());
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.login.title),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    l.d("pressed");
                    auth.add(const SignInEvent.setSignInStatus(isLogged: true));
                    l.d("pressed2");
                    //context.router.replace(const HomeRoute());
                  },
                  child: const Text("Enter")),
            ),
            TextButton(
                onPressed: () {
                  context.router.push(const SignUpRoute());
                },
                child: const Text("registrarse"))
          ],
        ),
      ),
    );
  }
}
