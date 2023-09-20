import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/sign_in/domain/i_sign_in_data_source.dart';

import '../domain/i_sign_in_facade.dart';

@Injectable(as: ISignInFacade)
class SignInFacadeImpl implements ISignInFacade {
  SignInFacadeImpl(this._source);

  final ISignInDataSource _source;

  @override
  bool getSignInStatus() {
    return _source.getSignInStatus();
  }

  @override
  Future<void> setSignInStatus({required bool isLogged}) async {
    _source.setSignInStatus(isLogged: isLogged);
  }
}
