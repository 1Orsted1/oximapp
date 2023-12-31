import 'package:injectable/injectable.dart';
import 'package:hive/hive.dart';
import '../domain/i_sign_in_data_source.dart';

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
  Future<void> setSignInStatus({required bool isLogged}) async {
    _box.put(_signInBoxKey, isLogged);
  }
}
