import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_facade.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(ISignInFacade _facade)
      : super(SignInState.initialTest(isLogged: _facade.getSignInStatus())
            //_Initial()
            ) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
