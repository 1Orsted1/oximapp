import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oximapp_v2/user/domain/user.dart';
import '../domain/i_user_selection_data_source.dart';

//const _signInBoxKey = 'signIn';

@Injectable(as: IUserSelectionDataSource)
class UserSelectionDataSourceImpl implements IUserSelectionDataSource {
  UserSelectionDataSourceImpl(this._isar);
  //final Box<bool> _box;
  final Isar _isar;

  //@preResolve
  // @factoryMethod
  // static Future<UserSelectionDataSourceImpl> init() async {
  //   final box = await Hive.openBox<bool>(_signInBoxKey);
  //   return UserSelectionDataSourceImpl._(box, null);
  // }

  // @override
  // bool getSelectedUser() {
  //   return _box.get(_signInBoxKey) ?? false;
  // }

  // @override
  // void setSelectedUser({required bool isLogged}) {
  //   _box.put(_signInBoxKey, isLogged);
  // }

  @override
  Future<List<User>> getUsers() async {
    final isar = _isar;
    final List<User> users =
        await isar.users.where().filter().userNameIsNotNull().findAll();
    print("newUSER: ${users.first}");
    return users;
  }

  @override
  bool getSelectedUser() {
    return false;
  }

  @override
  void setSelectedUser({required bool isLogged}) {}
}
