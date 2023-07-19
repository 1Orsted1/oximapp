import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/presentation/sign_in/sign_up_screen.dart';
import 'package:oximapp_v2/presentation/sign_up/sign_in_screen.dart';
import '../../home/home_screen.dart';


part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          guards: [],
          initial: true,
        ),
      ];

}
