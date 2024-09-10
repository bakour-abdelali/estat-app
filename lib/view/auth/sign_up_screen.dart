import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/auth/singup_controler.dart';
import '../../core/class/state_raqust.dart';
import '../../core/const/app_colors.dart';
import '../../core/funcion/alert_exit.dart';
import '../../core/funcion/valdit_input.dart';
import '../widget/auth/custem_button_auth.dart';
import '../widget/auth/custem_sign_up_auth.dart';
import '../widget/auth/custem_text_filed.dart';
import '../widget/auth/custem_title_auth.dart';
import '../widget/auth/custm_body_auth.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SingupControlerImp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          '12'.tr,
        ),
      ),
      // ignore: deprecated_member_use
      body: WillPopScope(
          onWillPop: alertExit,
          child: GetBuilder<SingupControlerImp>(
            builder: ((controller) {
              if (controller.stateRaqust == StateRaqust.Laoding) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Form(
                    key: controller.globalKey,
                    child: ListView(
                      children: [
                        CustemTitleAuth(
                          title: '4'.tr,
                        ),
                        CutemBodyAuth(
                          body: '14'.tr,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustemTextFiled(
                          valdit: (value) {
                            return validatInput(
                                min: 5,
                                max: 100,
                                typ: AppType.user,
                                val: value!);
                          },
                          mycontrole: controller.farstName,
                          hintText: '33'.tr,
                          icons: Icons.account_circle,
                          lable: '33'.tr,
                        ),
                        CustemTextFiled(
                          valdit: (value) {
                            return validatInput(
                                min: 5,
                                max: 100,
                                typ: AppType.user,
                                val: value!);
                          },
                          mycontrole: controller.lastName,
                          hintText: '154'.tr,
                          icons: Icons.account_circle,
                          lable: '153'.tr,
                        ),
                        CustemTextFiled(
                          valdit: (value) {
                            return validatInput(
                                min: 5,
                                max: 100,
                                typ: AppType.email,
                                val: value!);
                          },
                          mycontrole: controller.email,
                          hintText: '6'.tr,
                          icons: Icons.email_outlined,
                          lable: '7'.tr,
                        ),
                        CustemTextFiled(
                          valdit: (value) {
                            return validatInput(
                                min: 5,
                                max: 100,
                                typ: AppType.phone,
                                val: value!);
                          },
                          mycontrole: controller.phon,
                          isNumber: true,
                          hintText: '31'.tr,
                          icons: Icons.phone_android_outlined,
                          lable: '32'.tr,
                        ),
                        CustemTextFiled(
                          obscureText: controller.obscureText,
                          onTap: () {
                            controller.showPaswored();
                          },
                          valdit: (value) {
                            return validatInput(
                                min: 5,
                                max: 100,
                                typ: AppType.pasowred,
                                val: value!);
                          },
                          mycontrole: controller.pasword,
                          hintText: '8'.tr,
                          icons: Icons.lock_outline,
                          lable: '9'.tr,
                        ),
                        CustemButtonAuth(
                          title: '10'.tr,
                          onPressed: () {
                            controller.goTovrficationEmail();
                          },
                        ),
                        CustemSignUpAuth(
                          title: "15".tr,
                          body: "10".tr,
                          onPressed: () {
                            controller.gotoLogin();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }
            }),
          )),
    );
  }
}
