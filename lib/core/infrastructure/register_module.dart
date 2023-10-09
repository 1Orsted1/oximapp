import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Future<Directory> getStorageDir() async {
    return await getApplicationDocumentsDirectory();
  }
}
