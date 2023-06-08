import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const secondary = Color(0xFF40414F);
  static const accent = Color.fromARGB(255, 19, 110, 140);
  static const textDark = Color(0xFF9899A5);
  static const textLight = Color.fromARGB(255, 245, 245, 245);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF40414F);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

abstract class _DarkColors {
  static const background = Color(0xFF353740);
  static const card = AppColors.cardDark;
}

class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;
  static const ligthMessageTilesColor = Color.fromARGB(255, 255, 255, 255);
  static const darkMessageTilesColor = Color.fromARGB(255, 34, 34, 35);

  final darkBase = ThemeData.dark();
  final lightBase = ThemeData.light();

  ThemeData get light => ThemeData(
        brightness: Brightness.light,
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.interTextTheme().apply(bodyColor: AppColors.textDark),
        appBarTheme: lightBase.appBarTheme.copyWith(
          iconTheme: lightBase.iconTheme,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: AppColors.textDark,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: _LightColors.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondary),
        ),
        cardColor: _LightColors.card,
        primaryTextTheme: const TextTheme(
          titleLarge: TextStyle(color: AppColors.textDark),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconDark),
        colorScheme: lightBase.colorScheme
            .copyWith(secondary: accentColor)
            .copyWith(background: _LightColors.background),
      );

  ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        visualDensity: visualDensity,
        textTheme:
            GoogleFonts.interTextTheme().apply(bodyColor: AppColors.textLight),
        appBarTheme: darkBase.appBarTheme.copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: GoogleFonts.mulish().fontFamily,
            color: AppColors.textDark,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        scaffoldBackgroundColor: _DarkColors.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondary),
        ),
        cardColor: _DarkColors.card,
        primaryTextTheme: const TextTheme(
          titleLarge: TextStyle(color: AppColors.textLight),
        ),
        iconTheme: const IconThemeData(color: AppColors.iconLight),
        colorScheme: darkBase.colorScheme
            .copyWith(secondary: accentColor)
            .copyWith(background: _DarkColors.background),
      );
}
