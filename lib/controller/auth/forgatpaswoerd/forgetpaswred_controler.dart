import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../../../core/class/state_raqust.dart';
import '../../../core/funcion/head_data.dart';

import '../../../data/remote/forgatpaswoerd/check_email.dart';
import '../../../view/auth/forget/verification_screen.dart';

abstract class ForgetPaswordControler extends GetxController {
  forgetPasword();

  void goToVerifcaionCode();
}

class ForgetPaswordControlerImp extends ForgetPaswordControler {
  late TextEditingController email;
  StateRaqust? stateRaqust;
  GlobalKey<FormState> globleKey = GlobalKey<FormState>();
  CheckEmail checkEmail = CheckEmail(Get.find());

  @override
  forgetPasword() async {
    if (globleKey.currentState!.validate()) {
      stateRaqust = StateRaqust.Laoding;
      update();

      var respons = await checkEmail.postData(email: email.text);
      stateRaqust = headData(respons);
      print("<------------------");
      if (stateRaqust == StateRaqust.succes) {
        if (respons['status'] == 'success') {
          Get.to(const VerificationScreen(), arguments: {'email': email.text});
        } else {
          stateRaqust = StateRaqust.fuler;
          Get.defaultDialog(
              title: "waring ",
              middleText: 'the email or number phont is not fud');
          update();
        }
      } else {
        Get.defaultDialog(
            title: "waring ",
            middleText: 'the email or number phont is not fud');
      }
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

/*
<repertoire xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="schema.xsd">

*/
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  void goToVerifcaionCode() {
    if (globleKey.currentState!.validate()) {
      Get.to(
        () => const VerificationScreen(),
        transition: Transition.upToDown,
      );
    }
    // TODO: implement goToForgetPasword
  }
}
