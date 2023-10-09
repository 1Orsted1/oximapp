// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oximapp_v2/core/infrastructure/register_module.dart' as _i16;
import 'package:oximapp_v2/core/presentation/app_router.dart' as _i15;
import 'package:oximapp_v2/core/presentation/auth_guard.dart' as _i14;
import 'package:oximapp_v2/user_register/application/user_register_bloc.dart'
    as _i12;
import 'package:oximapp_v2/user_register/domain/i_user_register_data_source.dart'
    as _i4;
import 'package:oximapp_v2/user_register/domain/i_user_register_facade.dart'
    as _i6;
import 'package:oximapp_v2/user_register/infrastructure/user_register_data_source_impl.dart'
    as _i5;
import 'package:oximapp_v2/user_register/infrastructure/user_register_facade_impl.dart'
    as _i7;
import 'package:oximapp_v2/user_selection/application/user_selection_bloc.dart'
    as _i13;
import 'package:oximapp_v2/user_selection/domain/i_user_selection_data_source.dart'
    as _i8;
import 'package:oximapp_v2/user_selection/domain/i_user_selection_facade.dart'
    as _i10;
import 'package:oximapp_v2/user_selection/infraestructure/sign_in_data_source_impl.dart'
    as _i9;
import 'package:oximapp_v2/user_selection/infraestructure/sign_in_facade_impl.dart'
    as _i11;

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
    final registerModule = _$RegisterModule();
    gh.lazySingletonAsync<_i3.Directory>(() => registerModule.getStorageDir());
    gh.factory<_i4.IUserRegisterDataSource>(
        () => _i5.UserRegisterDataSourceImpl());
    gh.factory<_i6.IUserRegisterFacade>(
        () => _i7.UserRegisterFacadeImpl(gh<_i4.IUserRegisterDataSource>()));
    await gh.factoryAsync<_i8.IUserSelectionDataSource>(
      () => _i9.UserSelectionDataSourceImpl.init(),
      preResolve: true,
    );
    gh.factory<_i10.IUserSelectionFacade>(
        () => _i11.SignInFacadeImpl(gh<_i8.IUserSelectionDataSource>()));
    gh.factory<_i12.UserRegisterBloc>(
        () => _i12.UserRegisterBloc(gh<_i6.IUserRegisterFacade>()));
    gh.lazySingleton<_i13.UserSelectionBloc>(
        () => _i13.UserSelectionBloc(gh<_i10.IUserSelectionFacade>())..init());
    gh.factory<_i14.AuthGuard>(() => _i14.AuthGuard(
          gh<_i13.UserSelectionBloc>(),
          gh<_i10.IUserSelectionFacade>(),
        ));
    gh.factory<_i15.AppRouter>(
        () => _i15.AppRouter(authGuard: gh<_i14.AuthGuard>()));
    return this;
  }
}

class _$RegisterModule extends _i16.RegisterModule {}
