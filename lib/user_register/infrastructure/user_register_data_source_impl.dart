import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../user/domain/user.dart';
import '../domain/i_user_register_data_source.dart';

@Injectable(as: IUserRegisterDataSource)
class UserRegisterDataSourceImpl implements IUserRegisterDataSource {
  UserRegisterDataSourceImpl();

  @override
  Future<bool> registerUser({required String name}) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [UserSchema],
      directory: dir.path,
    );

    final newUser = User()..userName = name;
    await isar.writeTxn(() => isar.users.put(newUser));
    final confirmUser = await isar.users.get(newUser.id);
    print("newUSER: $confirmUser");
    return true;
  }
}
