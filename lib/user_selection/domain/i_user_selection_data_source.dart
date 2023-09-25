abstract interface class IUserSelectionDataSource {
  bool getSelectedUser();
  Future<void> setSelectedUser({required bool isLogged});
}
