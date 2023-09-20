import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/i_sign_in_facade.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

//SignInState.initialTest(isLogged: facade.getSignInStatus()

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._facade) : super(SignInState.initial()) {
    on<_getSignInStatus>(_getStatus);
    on<_setSignInStatus>(_setStatus);
  }
  final ISignInFacade _facade;

  @postConstruct
  void init() {
    SignInState.initialTest(isLogged: _facade.getSignInStatus());
  }

  Future<void> _getStatus(
      _getSignInStatus event, Emitter<SignInState> emit) async {
    final status = _facade.getSignInStatus();
    print('sign in status: $status');
    emit(state.copyWith(isLogged: status));
  }

  Future<void> _setStatus(
      _setSignInStatus event, Emitter<SignInState> emit) async {
    final status = await _facade.setSignInStatus(isLogged: event.isLogged);
    emit(state.copyWith(isLogged: event.isLogged));
  }
}
