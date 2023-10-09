import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../user/domain/user.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<Directory> getStorageDir() async {
    return await getApplicationDocumentsDirectory();
  }

  @preResolve
  @singleton
  Future<Isar> getInstance() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [UserSchema],
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
