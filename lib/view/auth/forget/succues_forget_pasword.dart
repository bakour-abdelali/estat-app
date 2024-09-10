import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';
import '../../../core/const/app_routes.dart';
import '../../widget/auth/custem_title_auth.dart';
import '../../widget/auth/custm_body_auth.dart';

class SuccuesSignUp extends StatelessWidget {
  const SuccuesSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ElevatedButton(
        child: Text("go to login"),
        onPressed: () {
          Get.offAllNamed(AppRoutes.login);
        },
      ),
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
            body: '21'.tr,
          ),
        ],
      ),
    );
  }
}
