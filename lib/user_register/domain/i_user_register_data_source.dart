abstract interface class IUserRegisterDataSource {
  Future<bool> registerUser({required String name, String? image});
}
