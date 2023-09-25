part of 'user_selection_bloc.dart';

@freezed
class UserSelectionState with _$UserSelectionState {
  const factory UserSelectionState({
    bool? isLogged,
  }) = _UserSelectionState;

  factory UserSelectionState.initial() => const UserSelectionState(
        isLogged: false,
      );

  factory UserSelectionState.initialTest({required bool isLogged}) =>
      UserSelectionState(isLogged: isLogged);
}
