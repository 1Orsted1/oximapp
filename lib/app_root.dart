import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:oximapp_v2/presentation/core/router/app_navigation_observer.dart';
import 'package:oximapp_v2/presentation/core/router/app_router.dart';

import 'aplication/sign_in/sign_in_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //Custom observer
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [AppNavigationObserver()],
      ),
      routerConfig: appRouter.config(
        reevaluateListenable: ReevaluateListenable.stream(
          SignInBloc.stream.map((event) => event.isAuthenticated).distinct(),
        ),
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
