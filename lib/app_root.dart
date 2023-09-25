import 'package:flutter/material.dart';

import 'core/infrastructure/app_navigation_observer.dart';
import 'core/presentation/app_router.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({
    super.key,
    required this.appRouter,
    required this.listenable,
  });
  final AppRouter appRouter;
  final Listenable listenable;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //Custom observer
      // routerDelegate: appRouter.delegate(
      //   navigatorObservers: () => [AppNavigationObserver()],
      // ),
      //--------
      routerConfig: appRouter.config(
          reevaluateListenable: listenable,
          navigatorObservers: () => [
                AppNavigatorObserver(),
              ]),
      //--------
      //routeInformationParser: appRouter.defaultRouteParser(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
