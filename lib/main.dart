import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'application/core/router/app_navigation_observer.dart';
import 'application/core/router/app_router.dart';
import 'injection.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //No entiendo esto investigar luego
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [AppNavigationObserver()],
      ),

      routeInformationParser: _appRouter.defaultRouteParser(),
      //routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
