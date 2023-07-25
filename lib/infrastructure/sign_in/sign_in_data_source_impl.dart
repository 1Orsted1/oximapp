import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import '../../domain/sign_in/i_sign_in_data_source.dart';

const _signInBoxKey = 'signIn';

@Injectable(as: ISignInDataSource)
class SignInDataSourceImpl implements ISignInDataSource {
  SignInDataSourceImpl._(this._box);
  final Box<bool> _box;

  @preResolve
  @factoryMethod
  static Future<SignInDataSourceImpl> init() async {
    final box = await Hive.openBox<bool>(_signInBoxKey);
    return SignInDataSourceImpl._(box);
  }

  @override
  bool getSignInStatus() {
    return _box.get(_signInBoxKey)!;
  }

  @override
  bool setSignInStatus({required bool isLogged}) {
    _box.put(_signInBoxKey, isLogged);
    return isLogged;
  }
}
