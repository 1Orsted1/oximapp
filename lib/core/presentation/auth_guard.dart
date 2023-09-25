import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import '../../user_selection/application/user_selection_bloc.dart';
import '../../user_selection/domain/i_user_selection_facade.dart';
import 'app_router.dart';

@injectable
class AuthGuard implements AutoRouteGuard {
  AuthGuard(this.userSelection, this.signInFacade);

  final UserSelectionBloc userSelection;
  final IUserSelectionFacade signInFacade;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (userSelection.state.isLogged! ||
        resolver.routeName == UserSelectionRoute.name) {
      resolver.next();
    } else {
      userSelection.stream
          .firstWhere((element) => element.isLogged!)
          .then((value) => resolver.resolveNext(
                userSelection.state.isLogged!,
                reevaluateNext: false,
              ));
      resolver.redirect(const UserSelectionRoute());
    }
  }
}
