import 'package:flutter/material.dart';
import 'package:oximapp_v2/app_root.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oximapp_v2/sign_in/application/sign_in_bloc.dart';

import 'core/presentation/app_router.dart';
import 'injection.dart';

Future<void> main() async {
  await configureDependencies();
  final appRouter = getIt<AppRouter>();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<SignInBloc>(
        create: (context) =>
            getIt<SignInBloc>()..add(const SignInEvent.getSignInStatus()),
      ),
    ],
    child: AppRoot(appRouter: appRouter),
  ));
}
