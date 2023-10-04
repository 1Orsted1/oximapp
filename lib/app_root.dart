import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/infrastructure/app_navigation_observer.dart';
import 'core/presentation/app_router.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({
    super.key,
    required this.appRouter,
    required this.listenable,
  });
  final AppRouter appRouter;
  final Listenable listenable;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF73FBCA),
      //tertiary: const Color(0xFFC76990),
      brightness: Brightness.light,
    );
    return MaterialApp.router(
      routerConfig: appRouter.config(
        reevaluateListenable: listenable,
        navigatorObservers: () => [
          AppNavigatorObserver(),
        ],
      ),
      title: 'Oximapp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.nanumGothic(
            fontSize: 30,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: GoogleFonts.nanumGothic(),
          displaySmall: GoogleFonts.nanumGothic(),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            foregroundColor: colorScheme.primary,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
        ),
      ),
    );
  }
}
