import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/auth/login_controler.dart';
import '../../core/class/state_raqust.dart';
import '../../core/const/app_colors.dart';
import '../../core/const/app_images.dart';
import '../../core/funcion/alert_exit.dart';
import '../../core/funcion/valdit_input.dart';
import '../widget/auth/custem_button_auth.dart';
import '../widget/auth/custem_sign_up_auth.dart';
import '../widget/auth/custem_text_filed.dart';
import '../widget/auth/custem_title_auth.dart';
import '../widget/auth/custm_body_auth.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginControlerImp controlerImp = Get.put(LoginControlerImp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          '10'.tr,
        ),
      ),
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: alertExit,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Form(
            key: controlerImp.globalKey,
            child: ListView(
              children: [
                Image.asset(
                  AppImages.logoImage,
                  height: 150,
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustemTitleAuth(
                  title: '4'.tr,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                CutemBodyAuth(
                  body: '5'.tr,
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                const SizedBox(
                  height: 70,
                ),
                CustemTextFiled(
                  valdit: (value) {
                    return validatInput(
                        min: 5, max: 100, typ: AppType.email, val: value!);
                  },
                  mycontrole: controlerImp.email,
                  hintText: '6'.tr,
                  icons: Icons.email_outlined,
                  lable: '7'.tr,
                ),
                GetBuilder<LoginControlerImp>(builder: (context) {
                  return CustemTextFiled(
                    onTap: () {
                      context.showPaswored();
                    },
                    obscureText: context.obscureText,
                    valdit: (value) {
                      return validatInput(
                          min: 5, max: 100, typ: AppType.pasowred, val: value!);
                    },
                    mycontrole: controlerImp.pasword,
                    hintText: '8'.tr,
                    icons: Icons.lock_outline,
                    lable: '9'.tr,
                  );
                }),
                InkWell(
                  onTap: () {
                    controlerImp.goToForgetPasword();
                  },
                  child: Text(
                    "13".tr,
                    // style: Get.textTheme.bodyText1,
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<LoginControlerImp>(builder: ((controller) {
                  if (controller.stateRaqust == StateRaqust.Laoding) {
                    return const Center(
                      child:
                          CircularProgressIndicator(color: AppColors.primary),
                    );
                  }
                  return CustemButtonAuth(
                    title: '10'.tr,
                    onPressed: () {
                      controller.login();
                    },
                  );
                })),

                CustemSignUpAuth(
                  title: "11".tr,
                  body: "12".tr,
                  onPressed: () {
                    controlerImp.gotoSingUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
