import 'dart:convert';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import '../domain/i_user_register_data_source.dart';
import '../domain/i_user_register_facade.dart';

@Injectable(as: IUserRegisterFacade)
class UserRegisterFacadeImpl implements IUserRegisterFacade {
  UserRegisterFacadeImpl(this._source);
  final IUserRegisterDataSource _source;
  @override
  Future<bool> registerUser({
    required String name,
    String? image,
  }) {
    return _source.registerUser(name: name, image: image);
  }

  @override
  String? encodeImage({required Uint8List? imageBytes}) {
    if (imageBytes == null) return null;
    return base64Encode(imageBytes);
  }

  Uint8List decodeImage(String encodedImage) {
    return Uint8List.fromList(base64Decode(encodedImage));
  }
}
