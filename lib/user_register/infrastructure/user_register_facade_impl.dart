import 'package:injectable/injectable.dart';

import '../domain/i_user_register_data_source.dart';
import '../domain/i_user_register_facade.dart';

@Injectable(as: IUserRegisterFacade)
class UserRegisterFacadeImpl implements IUserRegisterFacade {
  UserRegisterFacadeImpl(this._source);
  final IUserRegisterDataSource _source;
  @override
  Future<bool> registerUser({required String name}) {
    return _source.registerUser(name: name);
  }
}
