import 'dart:typed_data';

abstract interface class IUserRegisterFacade {
  Future<bool> registerUser({required String name, String? image});
  String? encodeImage({required Uint8List? imageBytes});
}
