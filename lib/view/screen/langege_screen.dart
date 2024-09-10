import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/localzion/change_local.dart';
import '../widget/langege_widget/cusstem_button.dart';

class LangugeScreen extends GetView<ChangeLocal> {
  const LangugeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '1'.tr,
            style: Get.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonLanguge(
            text: '2'.tr,
            onPressed: () {
              // Get.toNamed(AppRoutes.OnBording);

              controller.changLangage('ar');
              controller.goToPage();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButtonLanguge(
              onPressed: () {
                // Get.toNamed(AppRoutes.OnBording);

                controller.changLangage('en');
                controller.goToPage();
              },
              text: '3'.tr)
        ],
      ),
    );
  }
}
