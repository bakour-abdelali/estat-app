import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData themeDark = ThemeData(
      useMaterial3: true,
      // colorScheme: ,
      expansionTileTheme: const ExpansionTileThemeData(
          iconColor: AppColors.primary,
          textColor: AppColors.primary,
          backgroundColor: AppColors.black),
      listTileTheme: const ListTileThemeData(
          titleTextStyle: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: AppColors.background,
          ),
          subtitleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.background,
          )),
      bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.black),
      appBarTheme: const AppBarTheme(
          // shadowColor: Colors.white38,
          centerTitle: true,
          iconTheme: IconThemeData(color: AppColors.colorTextAppBar, size: 40),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: AppColors.colorTextAppBar,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.black45),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary),
      fontFamily: 'PlayfairDisplay',
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: AppColors.background,
        ),
        titleLarge: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: AppColors.colorTextAppBar,
        ),
        bodyMedium: TextStyle(
          fontSize: 18,
          color: AppColors.background,
        ),
        bodySmall: TextStyle(
          fontSize: 17,
          color: AppColors.colorTextSubTitle,
        ),
        bodyLarge: TextStyle(
            fontSize: 20,
            color: AppColors.background,
            fontWeight: FontWeight.w700),
      ),
      primarySwatch: Colors.deepPurple,
      cardTheme: const CardTheme(color: AppColors.black),
      scaffoldBackgroundColor: AppColors.black);
  static final ThemeData themeEnglish = ThemeData(
    useMaterial3: true,
    // colorScheme: ,
    listTileTheme: const ListTileThemeData(
        titleTextStyle: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    )),
    appBarTheme: const AppBarTheme(
        shadowColor: Colors.black12,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.colorTextAppBar, size: 40),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: AppColors.colorTextAppBar,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.background),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
    fontFamily: 'PlayfairDisplay',
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: AppColors.colorTextTitle,
      ),
      titleLarge: TextStyle(
        fontSize: 27,
        fontWeight: FontWeight.bold,
        color: AppColors.colorTextAppBar,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        color: AppColors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 17,
        color: AppColors.colorTextSubTitle,
      ),
      bodyLarge: TextStyle(
          fontSize: 20, color: AppColors.black, fontWeight: FontWeight.w700),
    ),
    primarySwatch: Colors.blue,
    cardTheme: const CardTheme(color: AppColors.background),
    scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
  );
  //عربية
  static final ThemeData themeArabic = ThemeData(
    useMaterial3: true,
    listTileTheme: const ListTileThemeData(
        titleTextStyle: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: AppColors.black,
    )),
    cardTheme: const CardTheme(color: AppColors.background),
    scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
    appBarTheme: const AppBarTheme(
        // shadowColor: AppColors.colorBlackText,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.colorTextAppBar, size: 40),
        elevation: 0,
        titleTextStyle: TextStyle(
          color: AppColors.colorTextAppBar,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.background),
    fontFamily: 'Cairo',
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppColors.colorTextSubTitle,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.colorTextNormal,
      ),
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColors.colorTextAppBar,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        color: AppColors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontSize: 17,
        color: AppColors.colorTextSubTitle,
      ),
    ),
    primarySwatch: Colors.lightBlue,
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: AppColors.primary),
    primaryColor: Colors.blue,
  );
}
