// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'domain/sign_in/i_sign_in_data_source.dart' as _i4;
import 'domain/sign_in/i_sign_in_facade.dart' as _i6;
import 'infrastructure/sign_in/sign_in_data_source_impl.dart' as _i5;
import 'infrastructure/sign_in/sign_in_facade_impl.dart' as _i7;
import 'presentation/core/router/app_router.dart' as _i3;
import 'presentation/core/router/auth_guard.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    await gh.factoryAsync<_i4.ISignInDataSource>(
      () => _i5.SignInDataSourceImpl.init(),
      preResolve: true,
    );
    gh.factory<_i6.ISignInFacade>(
        () => _i7.SignInFacadeImpl(gh<_i4.ISignInDataSource>()));
    gh.factory<_i8.AuthGuard>(() => _i8.AuthGuard(gh<_i6.ISignInFacade>()));
    return this;
  }
}
