import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:oximapp_v2/app_root.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oximapp_v2/i18n/strings.g.dart';
import 'package:oximapp_v2/user_selection/application/user_selection_bloc.dart';

import 'core/presentation/app_router.dart';
import 'injection.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  LocaleSettings.setLocale(AppLocale.es);
  await configureDependencies();
  final appRouter = getIt<AppRouter>();

  FlutterNativeSplash.remove();
  runApp(TranslationProvider(
    child: MultiBlocProvider(
      providers: [
        BlocProvider<UserSelectionBloc>(
          create: (context) => getIt<UserSelectionBloc>(),
        ),
      ],
      child: AppRoot(appRouter: appRouter),
    ),
  ));
}
