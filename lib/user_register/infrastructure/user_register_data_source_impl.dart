import 'dart:convert';
import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../../user/domain/user.dart';
import '../domain/i_user_register_data_source.dart';

@Injectable(as: IUserRegisterDataSource)
class UserRegisterDataSourceImpl implements IUserRegisterDataSource {
  UserRegisterDataSourceImpl(this._isar);
  final Isar _isar;

  @override
  Future<bool> registerUser({
    required String name,
    String? image,
  }) async {
    final isar = _isar;
    final newUser = User()..userName = name;
    newUser.image = image;
    await isar.writeTxn(() => isar.users.put(newUser));
    final confirmUser = await isar.users.get(newUser.id);
    print("newUSER: $confirmUser");
    return true;
  }
}
