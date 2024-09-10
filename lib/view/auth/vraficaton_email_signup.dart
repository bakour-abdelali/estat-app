import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';

import '../../controller/auth/verficaton_email_signup.dart';
import '../../core/const/app_colors.dart';
import '../widget/auth/custem_title_auth.dart';
import '../widget/auth/custm_body_auth.dart';

// ignore: must_be_immutable
class VerficatonEmailSignUp extends StatelessWidget {
  const VerficatonEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerficatonEmailSignUpImp controlerImp = Get.put(VerficatonEmailSignUpImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
        title: Text(
          '16'.tr,
          style: Get.textTheme.bodySmall,
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
            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              crossAxisAlignment: CrossAxisAlignment.center,
              fieldWidth: 45,
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
                //controlerImp.goToResPasowrd();
                controlerImp.goToSuccer(verificationCode);
                // VerficatonEmailSignUpImp
              }, // end onSubmit
            ),
            InkWell(
              onTap: () {
                controlerImp.sandCode();
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Resand verfai code ',
                  style: Get.textTheme.titleLarge,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
