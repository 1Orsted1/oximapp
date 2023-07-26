import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../home/home_screen.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../sign_up/sign_up_screen.dart';
import 'auth_guard.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter({required this.authGuard});
  final AuthGuard authGuard;
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          //guards: [getIt<AuthGuard>()],
          guards: [authGuard],
          initial: true,
        ),
      ];
}
