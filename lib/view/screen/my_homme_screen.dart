import 'dart:io';

import 'package:estat_app/view/widget/screen/my_homme_screen/button_navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/screen/homme_screen_controller.dart';
import '../../core/const/app_colors.dart';

class MyHommeScreen extends StatelessWidget {
  const MyHommeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<HommeScreenControllerImp>(HommeScreenControllerImp());

    return Scaffold(
        // backgroundColor: AppColors.background,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.background,
          child: const Icon(Icons.shop),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const ButtonNavigator(),
        // appBar: AppBar(),
        body: PopScope(
            canPop: false,
            child: GetBuilder<HommeScreenControllerImp>(builder: (controller) {
              return SafeArea(child: controller.screen[controller.curntPage]);
            }),
            onPopInvoked: (value) {
              if (value) {
                return;
              } else {
                Get.defaultDialog(
                    title: "Waring",
                    middleText: "do you want exite app",
                    onConfirm: () {
                      exit(0);
                    },
                    onCancel: () {
                      Get.back();
                    });
              }

              // return Future.value(false);
            }));
  }
}
