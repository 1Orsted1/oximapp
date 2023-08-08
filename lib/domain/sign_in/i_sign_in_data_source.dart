abstract class ISignInDataSource {
  bool getSignInStatus();
  Future<void> setSignInStatus({required bool isLogged});
}
