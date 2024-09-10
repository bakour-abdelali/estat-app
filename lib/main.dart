import 'package:estat_app/core/localzion/change_local.dart';
import 'package:estat_app/core/servises/servises.dart';
import 'package:estat_app/get_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/inital_bindings.dart';
import 'core/const/app_thems.dart';
import 'core/localzion/my_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeLocal>(
        init: ChangeLocal(),
        builder: (changeLocal) {
          return GetMaterialApp(
            title: 'ESTATE APP',
            themeMode: changeLocal.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: AppThemes.themeDark,

            initialBinding: InitialBinding(),
            theme: changeLocal.themeData,
            locale: changeLocal.langae,
            debugShowCheckedModeBanner: false,
            translations: MyTranslations(),
            // home: TestPackageScreen(),
            getPages: getPages,
          );
        });
  }
}
