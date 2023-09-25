import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/l.dart';

import '../../core/presentation/app_router.dart';
import '../../i18n/strings.g.dart';
import '../application/user_selection_bloc.dart';

@RoutePage()
class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    final userSelection = context.watch<UserSelectionBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(t.login.title),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  l.d("pressed");
                  userSelection.add(
                      const UserSelectionEvent.setSignInStatus(isLogged: true));
                  l.d("pressed2");
                  //context.router.replace(const HomeRoute());
                },
                child: const Text("Enter")),
          ),
          TextButton(
              onPressed: () {
                context.router.push(const UserRegisterRoute());
              },
              child: const Text("registrarse"))
        ],
      ),
    );
  }
}
