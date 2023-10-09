import '../../user/domain/user.dart';

abstract interface class IUserSelectionFacade {
  bool getSelectedUser();
  void setSelectedUser({required bool isLogged});
  Future<List<User>> getUsers();
}
