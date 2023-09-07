import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:l/l.dart';

class AppNavigationObserver extends AutoRouteObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final settings = route.settings;
    l.d("route pushed ${settings.name}");
    if (settings is AutoRoutePage) {
      l.d(settings.routeData.path);
    }
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    l.d("route visited: ${route.name}");
    l.d(route.routeInfo.path);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    l.d("route re-visited: ${route.name}");
    l.d(route.routeInfo.path);
  }
}
