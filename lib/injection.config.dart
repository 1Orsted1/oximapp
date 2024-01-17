// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;
import 'package:oximapp_v2/core/infrastructure/register_module.dart' as _i17;
import 'package:oximapp_v2/core/presentation/app_router.dart' as _i16;
import 'package:oximapp_v2/core/presentation/auth_guard.dart' as _i15;
import 'package:oximapp_v2/user_register/application/user_register_bloc.dart'
    as _i13;
import 'package:oximapp_v2/user_register/domain/i_user_register_data_source.dart'
    as _i5;
import 'package:oximapp_v2/user_register/domain/i_user_register_facade.dart'
    as _i7;
import 'package:oximapp_v2/user_register/infrastructure/user_register_data_source_impl.dart'
    as _i6;
import 'package:oximapp_v2/user_register/infrastructure/user_register_facade_impl.dart'
    as _i8;
import 'package:oximapp_v2/user_selection/application/user_selection_bloc.dart'
    as _i14;
import 'package:oximapp_v2/user_selection/domain/i_user_selection_data_source.dart'
    as _i9;
import 'package:oximapp_v2/user_selection/domain/i_user_selection_facade.dart'
    as _i11;
import 'package:oximapp_v2/user_selection/infraestructure/user_selection_data_source_impl.dart'
    as _i10;
import 'package:oximapp_v2/user_selection/infraestructure/user_selection_facade_impl.dart'
    as _i12;

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
    await gh.singletonAsync<_i3.Directory>(
      () => registerModule.getStorageDir(),
      preResolve: true,
    );
    await gh.singletonAsync<_i4.Isar>(
      () => registerModule.getInstance(),
      preResolve: true,
    );
    gh.factory<_i5.IUserRegisterDataSource>(
        () => _i6.UserRegisterDataSourceImpl(gh<_i4.Isar>()));
    gh.factory<_i7.IUserRegisterFacade>(
        () => _i8.UserRegisterFacadeImpl(gh<_i5.IUserRegisterDataSource>()));
    gh.factory<_i9.IUserSelectionDataSource>(
        () => _i10.UserSelectionDataSourceImpl(gh<_i4.Isar>()));
    gh.factory<_i11.IUserSelectionFacade>(
        () => _i12.UserSelectionFacadeImpl(gh<_i9.IUserSelectionDataSource>()));
    gh.factory<_i13.UserRegisterBloc>(
        () => _i13.UserRegisterBloc(gh<_i7.IUserRegisterFacade>()));
    gh.lazySingleton<_i14.UserSelectionBloc>(
        () => _i14.UserSelectionBloc(gh<_i11.IUserSelectionFacade>())..init());
    gh.factory<_i15.AuthGuard>(() => _i15.AuthGuard(
          gh<_i14.UserSelectionBloc>(),
          gh<_i11.IUserSelectionFacade>(),
        ));
    gh.factory<_i16.AppRouter>(
        () => _i16.AppRouter(authGuard: gh<_i15.AuthGuard>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
