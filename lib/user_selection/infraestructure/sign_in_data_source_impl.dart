import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import '../domain/i_user_selection_data_source.dart';

const _signInBoxKey = 'signIn';

@Injectable(as: IUserSelectionDataSource)
class UserSelectionDataSourceImpl implements IUserSelectionDataSource {
  UserSelectionDataSourceImpl._(this._box);
  final Box<bool> _box;

  @preResolve
  @factoryMethod
  static Future<UserSelectionDataSourceImpl> init() async {
    final box = await Hive.openBox<bool>(_signInBoxKey);
    return UserSelectionDataSourceImpl._(box);
  }

  @override
  bool getSelectedUser() {
    return _box.get(_signInBoxKey) ?? false;
  }

  @override
  Future<void> setSelectedUser({required bool isLogged}) async {
    _box.put(_signInBoxKey, isLogged);
  }
}
