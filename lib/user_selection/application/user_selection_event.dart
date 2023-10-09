part of 'user_selection_bloc.dart';

@freezed
class UserSelectionEvent with _$UserSelectionEvent {
  const factory UserSelectionEvent.getSignInStatus() = _getSelectedUser;
  const factory UserSelectionEvent.setSignInStatus({
    required bool isLogged,
  }) = _setSelectedUser;
  const factory UserSelectionEvent.getAllUsers() = _GetAllUsers;
}
