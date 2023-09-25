abstract interface class IUserSelectionDataSource {
  bool getSelectedUser();
  void setSelectedUser({required bool isLogged});
}
