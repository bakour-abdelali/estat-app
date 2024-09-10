import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgatpaswoerd/restcode_contrloer.dart';
import '../../../core/class/state_raqust.dart';
import '../../../core/const/app_colors.dart';
import '../../../core/funcion/valdit_input.dart';
import '../../widget/auth/custem_button_auth.dart';
import '../../widget/auth/custem_text_filed.dart';

// ignore: must_be_immutable
class RestCodeScreen extends StatelessWidget {
  const RestCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResPaswordControlerImp controlerImp = Get.put(ResPaswordControlerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '16'.tr,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        child: Form(
          key: controlerImp.globleKey,
          child: ListView(
            children: [
              // Image.asset(
              //   AppImages.logoImage,
              //   height: 150,
              // ),
              // CustemTitleAuth(
              //   title: '4'.tr,
              // ),
              // CutemBodyAuth(
              //   body: '5'.tr,
              // ),
              const SizedBox(
                height: 40,
              ),
              // CustemTextFiled(
              //   mycontrole: controlerImp.email,
              //   hintText: '6'.tr,
              //   icons: Icons.email_outlined,
              //   lable: '7'.tr,
              // ),
              CustemTextFiled(
                valdit: (value) {
                  return validatInput(
                      min: 5, max: 100, typ: AppType.pasowred, val: value!);
                },
                mycontrole: controlerImp.newPasword,
                hintText: '20'.tr,
                icons: Icons.lock_outline,
                lable: '18'.tr,
              ),
              CustemTextFiled(
                valdit: (value) {
                  return validatInput(
                      min: 5, max: 100, typ: AppType.pasowred, val: value!);
                },
                mycontrole: controlerImp.virPasword,
                hintText: '20'.tr,
                icons: Icons.lock_outline,
                lable: '19'.tr,
              ),
              // Text(
              //   "13".tr,
              //   // style: Get.textTheme.bodyText1,
              //   textAlign: TextAlign.end,
              // ),
              const SizedBox(
                height: 10,
              ),
              GetBuilder<ResPaswordControlerImp>(builder: ((controller) {
                if (controller.stateRaqust == StateRaqust.Laoding) {
                  return Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  );
                }
                return CustemButtonAuth(
                  title: '16'.tr,
                  onPressed: () {
                    controller.goToSuccuesSignUp();
                  },
                );
              }))

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
      ),
    );
  }
}
