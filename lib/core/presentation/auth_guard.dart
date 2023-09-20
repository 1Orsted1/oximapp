import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/sign_in/domain/i_sign_in_facade.dart';

import '../../sign_in/application/sign_in_bloc.dart';
import 'app_router.dart';

@injectable
class AuthGuard implements AutoRouteGuard {
  AuthGuard(this.signIn, this.signInFacade);

  final SignInBloc signIn;
  final ISignInFacade signInFacade;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    //final ISignInFacade _facade;
    //final userIsLogged = signIn.state.isLogged;
    final userIsLogged = signInFacade.getSignInStatus();
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
      resolver.redirect(const SignInRoute());
    }
  }
}
