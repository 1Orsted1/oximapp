part of 'user_register_bloc.dart';

@freezed
class UserRegisterState with _$UserRegisterState {
  const factory UserRegisterState({
    required bool isLoading,
    required bool operationCompleted,
    required String errorMessage,
    required String userName,
  }) = _UserRegisterState;

  factory UserRegisterState.initial() => const UserRegisterState(
        isLoading: false,
        operationCompleted: false,
        errorMessage: "",
        userName: "",
      );
}
