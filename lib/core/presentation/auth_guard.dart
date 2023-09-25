import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import '../../user_selection/application/user_selection_bloc.dart';
import '../../user_selection/domain/i_user_selection_facade.dart';
import 'app_router.dart';

@injectable
class AuthGuard implements AutoRouteGuard {
  AuthGuard(this.signIn, this.signInFacade);

  final UserSelectionBloc signIn;
  final IUserSelectionFacade signInFacade;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    //final ISignInFacade _facade;
    //final userIsLogged = signIn.state.isLogged;
    final userIsLogged = signInFacade.getSelectedUser();
    print("user status guard: $userIsLogged");
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (userIsLogged) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // tip: use resolver.redirect to have the redirected route
      // automatically removed from the stack when the resolver is completed
      resolver.redirect(const UserSelectionRoute());
    }
  }
}
