import 'package:estat_app/core/const/app_routes.dart';
import 'package:estat_app/core/middlewares/my_middlewares.dart';
import 'package:estat_app/view/auth/logion_screen.dart';
import 'package:estat_app/view/screen/langege_screen.dart';
import 'package:estat_app/view/screen/my_homme_screen.dart';
import 'package:get/get.dart';

import 'view/screen/category_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: "/",
      page: () => const LangugeScreen(),
      middlewares: [MyMiddlewares()]),
  GetPage(
    name: AppRoutes.langugeScreen,
    page: () => const LangugeScreen(),
  ),
  GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      transition: Transition.fadeIn),
  GetPage(
    name: AppRoutes.myHomeScreen,
    page: () => const MyHommeScreen(),
  ),
  GetPage(
    name: AppRoutes.categoryScreen,
    page: () => const CategoryScreen(),
  ),
];
