import 'package:flutter/material.dart';
import 'package:oximapp_v2/aplication/sign_in/sign_in_bloc.dart';
import 'package:oximapp_v2/app_root.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oximapp_v2/presentation/core/router/app_router.dart';

import 'injection.dart';

Future<void> main() async {
  await configureDependencies();
  final appRouter = getIt<AppRouter>();
  final signInBloc = getIt<SignInBloc>();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<SignInBloc>(
        create: (context) => getIt<SignInBloc>(),
      ),
    ],
    child: AppRoot(appRouter: appRouter),
  ));
}
