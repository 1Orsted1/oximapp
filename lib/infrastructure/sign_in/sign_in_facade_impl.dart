import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/domain/sign_in/i_sign_in_data_source.dart';

import '../../domain/sign_in/i_sign_in_facade.dart';

@Injectable(as: ISignInFacade)
class SignInFacadeImpl extends ISignInFacade {
  SignInFacadeImpl(this._source);

  final ISignInDataSource _source;

  @override
  bool getSignInStatus() {
    return getSignInStatus();
  }

  @override
  bool setSignInStatus({required bool isLogged}) {
    return _source.setSignInStatus(isLogged: isLogged);
  }
}
