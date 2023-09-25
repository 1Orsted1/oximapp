import "dart:developer";

import "package:auto_route/auto_route.dart";
import "package:flutter/widgets.dart";
import "package:l/l.dart";

class AppNavigatorObserver extends AutoRouterObserver {
  final stack = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    final settings = route.settings;
    l.d("New route pushed: ${settings.name}");
    if (settings is AutoRoutePage) {
      // l.d(settings.routeData.path);
      stack.add(settings.routeData.path);
      log(stack.toString());
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (route.data != null) {
      stack.removeLast();
      log(stack.toString());
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    final settings = route.settings;
    if (settings is AutoRoutePage) {
      stack.remove(settings.routeData.path);
    }
    log(stack.toString());
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final settings = oldRoute?.settings;
    if (settings is AutoRoutePage) {
      stack.remove(settings.routeData.path);
    }
    final settings2 = newRoute?.settings;
    if (settings2 is AutoRoutePage) {
      stack.add(settings2.routeData.path);
    }
    log(stack.toString());
  }
}
