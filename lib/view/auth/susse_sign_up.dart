import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/const/app_colors.dart';
import '../../core/const/app_routes.dart';
import '../widget/auth/custem_button_auth.dart';
import '../widget/auth/custem_title_auth.dart';
import '../widget/auth/custm_body_auth.dart';

class SuccessSignUpScreen extends StatelessWidget {
  const SuccessSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColors.primary,
          )),
          CustemTitleAuth(title: '4'.tr),
          CutemBodyAuth(
            body: '29'.tr,
          ),
          const SizedBox(
            height: 20,
          ),
          CustemButtonAuth(
            title: '30'.tr,
            onPressed: () {
              Get.offAllNamed(AppRoutes.login);
              // controlerImp.GoTovrficationEmail();
            },
          ),
        ],
      ),
    );
  }
}
