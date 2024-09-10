import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';


import '../../../controller/auth/forgatpaswoerd/verification_controler.dart';
import '../../../core/class/state_raqust.dart';
import '../../../core/const/app_colors.dart';
import '../../widget/auth/custem_title_auth.dart';
import '../../widget/auth/custm_body_auth.dart';

// ignore: must_be_immutable
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(controlerImp.email);
    Get.put(VerificationControlerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '16'.tr,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        child: ListView(
          children: [
            CustemTitleAuth(
              title: '16'.tr,
            ),
            CutemBodyAuth(
              body: '17'.tr,
            ),
            const SizedBox(
              height: 40,
            ),
            GetBuilder<VerificationControlerImp>(builder: ((controller) {
              if (controller.stateRaqust == StateRaqust.Laoding) {
                return Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                );
              }
              return OtpTextField(
                borderRadius: BorderRadius.circular(20),
                crossAxisAlignment: CrossAxisAlignment.center,
                fieldWidth: Get.width / 7.5,
                fillColor: AppColors.primary,
                numberOfFields: 5,
                //  borderColor: const Color(0xFF512DA8),
                borderColor: AppColors.primary,
                borderWidth: 3,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  //   controlerImp.goToResPasowrd();
                  // controlerImp.goToResPasowrd();
                  controller.checkCode(verificationCode);
                }, // end onSubmit
              );
            }))

            // CustemTextFiled(
            //   mycontrole: controlerImp.email,
            //   hintText: '6'.tr,
            //   icons: Icons.email_outlined,
            //   lable: '7'.tr,
            // ),
            // CustemTextFiled(
            //   mycontrole: controlerImp.pasword,
            //   hintText: '8'.tr,
            //   icons: Icons.lock_outline,
            //   lable: '9'.tr,
            // ),
            // Text(
            //   "13".tr,
            //   // style: Get.textTheme.bodyText1,
            //   textAlign: TextAlign.end,
            // ),

            // CustemSignUpAuth(
            //   title: "11".tr,
            //   body: "12".tr,
            //   onPressed: () {
            //     controlerImp.gotoSingUp();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
