import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_facade.dart';
import 'package:oximapp_v2/infrastructure/sign_in/sign_in_facade_impl.dart';
import 'package:oximapp_v2/presentation/core/router/auth_guard.dart';

import '../../home/home_screen.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../sign_up/sign_up_screen.dart';


part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          guards: [AuthGuard()],
          initial: true,
        ),
      ];

}
