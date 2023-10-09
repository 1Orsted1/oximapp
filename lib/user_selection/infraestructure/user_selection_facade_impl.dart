import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/user/domain/user.dart';

import '../domain/i_user_selection_data_source.dart';
import '../domain/i_user_selection_facade.dart';

@Injectable(as: IUserSelectionFacade)
class UserSelectionFacadeImpl implements IUserSelectionFacade {
  UserSelectionFacadeImpl(this._source);

  final IUserSelectionDataSource _source;

  @override
  bool getSelectedUser() {
    return _source.getSelectedUser();
  }

  @override
  void setSelectedUser({required bool isLogged}) async {
    _source.setSelectedUser(isLogged: isLogged);
  }

  @override
  Future<List<User>> getUsers() {
    return _source.getUsers();
  }
}
