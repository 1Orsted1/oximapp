abstract interface class ISignInFacade {
  bool getSignInStatus();
  Future<void> setSignInStatus({required bool isLogged});
}
