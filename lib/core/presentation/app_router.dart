import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/tracker/presentation/tracker_screen.dart';

import '../../dashboard/presentation/home_screen.dart';
import '../../user_register/presentation/user_register_screen.dart';
import '../../user_selection/presentation/user_selection_screen.dart';
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
        AutoRoute(page: UserRegisterRoute.page),
        AutoRoute(page: UserSelectionRoute.page),
        AutoRoute(page: TrackerRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          //guards: [getIt<AuthGuard>()],
          guards: [authGuard],
          initial: true,
        ),
      ];
}
