part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    bool? isLogged,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        isLogged: false,
      );

  factory SignInState.initialTest({required bool isLogged}) =>
      SignInState(isLogged: isLogged);
}
