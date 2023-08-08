import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_data_source.dart';

import '../../domain/sign_in/i_sign_in_facade.dart';

@Injectable(as: ISignInFacade)
class SignInFacadeImpl extends ISignInFacade {
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
