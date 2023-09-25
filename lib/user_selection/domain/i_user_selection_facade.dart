abstract interface class IUserSelectionFacade {
  bool getSelectedUser();
  void setSelectedUser({required bool isLogged});
}
