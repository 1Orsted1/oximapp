import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_facade.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(ISignInFacade facade)
      : super(SignInState.initialTest(isLogged: facade.getSignInStatus())) {
    on<_getSignInStatus>((event, emit) async {
      try {
        final status = facade.getSignInStatus();
        print('sign in status: $status');
        emit(state.copyWith(isLogged: status));
      } catch (e) {}
    });
    //_setSignInStatus
    on<_setSignInStatus>((event, emit) async {
      try {
        final status = await facade.setSignInStatus(isLogged: event.isLogged);
        emit(state.copyWith(isLogged: event.isLogged));
      } catch (e) {}
    });
  }
}
