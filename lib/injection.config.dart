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

import 'aplication/sign_in/sign_in_bloc.dart' as _i7;
import 'domain/sign_in/i_sign_in_data_source.dart' as _i3;
import 'domain/sign_in/i_sign_in_facade.dart' as _i5;
import 'infrastructure/sign_in/sign_in_data_source_impl.dart' as _i4;
import 'infrastructure/sign_in/sign_in_facade_impl.dart' as _i6;
import 'presentation/core/router/app_router.dart' as _i9;
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
    await gh.factoryAsync<_i3.ISignInDataSource>(
      () => _i4.SignInDataSourceImpl.init(),
      preResolve: true,
    );
    gh.factory<_i5.ISignInFacade>(
        () => _i6.SignInFacadeImpl(gh<_i3.ISignInDataSource>()));
    gh.factory<_i7.SignInBloc>(() => _i7.SignInBloc(gh<_i5.ISignInFacade>()));
    gh.factory<_i8.AuthGuard>(() => _i8.AuthGuard(gh<_i7.SignInBloc>()));
    gh.factory<_i9.AppRouter>(
        () => _i9.AppRouter(authGuard: gh<_i8.AuthGuard>()));
    return this;
  }
}
