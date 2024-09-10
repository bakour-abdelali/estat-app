import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const/app_routes.dart';
import '../const/app_thems.dart';

import '../servises/servises.dart';
// summarize me

class ChangeLocal extends GetxController {
  Locale? langae;
  ThemeData themeData = AppThemes.themeEnglish;
  Servises? servises = Get.find<Servises>();
  late bool isDark;
  changeMode(bool mode) {
    isDark = mode;
    update();

    servises!.sharedPreferences.setBool('isDark', isDark);

    //
  }

  goToPage() {
    if (servises!.sharedPreferences.getInt('step') == null) {
      servises!.sharedPreferences.setInt('step', 1);
      Get.offAllNamed(AppRoutes.login);
    } else {
      if (servises!.sharedPreferences.getInt('step') == 2) {
        // Get.toNamed(AppRoutes.myHomeScreen);
        Get.back();
      } else {
        servises!.sharedPreferences.setInt('step', 2);
        Get.offAllNamed(AppRoutes.myHomeScreen);
      }
    }
  }

  void changLangage(String langeCode) {
    //نحطو كود اللغة في متغير لوكال
    Locale locale = Locale(langeCode);
    themeData =
        langeCode == 'ar' ? AppThemes.themeArabic : AppThemes.themeEnglish;
    Get.changeTheme(themeData);
    // نحطو لغة جديدة في شارد
    servises!.sharedPreferences.setString('lang', langeCode);

    // نعيطو لدالة جاهزة باش تعير من للغة التطبيق
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    //تتنفد هي لولا قبل دالة البيلد

    String? code = servises!.sharedPreferences.getString('lang');
    if (servises!.sharedPreferences.getBool('isDark') == null) {
      servises!.sharedPreferences.setBool('isDark', false);
    }
    isDark = servises!.sharedPreferences.getBool('isDark')!;
    if (code == 'ar') {
      // changLangage('ar');
      langae = const Locale('ar');

      themeData = AppThemes.themeArabic;
    } else if (code == 'en') {
      //changLangage('en');
      langae = const Locale('en');
      themeData = AppThemes.themeEnglish;
    } else {
      // changLangage('ar');
      langae = Locale(Get.deviceLocale!.languageCode);
      themeData = AppThemes.themeArabic;
    }
    // backgroundColor(mode: isDark);
    // requestNotficaoin();
    // fcmNotficacion();

    super.onInit();
  }
}
