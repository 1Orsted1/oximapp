abstract class ISignInDataSource{
    bool getSignInStatus();
    bool setSignInStatus({required bool isLogged});
}