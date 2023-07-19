import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_facade.dart';
import 'package:oximapp_v2/presentation/core/router/app_router.dart';

@Injectable()
class AuthGuard extends AutoRouteGuard {
  AuthGuard(this._facade);

  final ISignInFacade _facade;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //final ISignInFacade _facade;
    final status = _facade.getSignInStatus();
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (false) {
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
