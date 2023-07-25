import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../../aplication/sign_in/sign_in_bloc.dart';
import '../../home/home_screen.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../sign_up/sign_up_screen.dart';
import 'auth_guard.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter({required this.bloc});
  final SignInBloc bloc;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          //d guards: [AuthGuard(bloc)],
          guards: [AuthGuard(bloc)],
          initial: true,
        ),
      ];
}
