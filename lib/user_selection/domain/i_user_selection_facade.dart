abstract interface class IUserSelectionFacade {
  bool getSelectedUser();
  Future<void> setSelectedUser({required bool isLogged});
}
