part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.getSignInStatus() = _getSignInStatus;
  const factory SignInEvent.setSignInStatus({
    required bool isLogged,
  }) = _setSignInStatus;
}
