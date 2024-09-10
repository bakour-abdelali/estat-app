import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/class/state_raqust.dart';
import '../../../core/funcion/head_data.dart';
import '../../../data/remote/forgatpaswoerd/res_paswored.dart';
import '../../../view/auth/forget/succues_forget_pasword.dart';

abstract class ResPaswordControler extends GetxController {
  void resPasword();

  void goToSuccuesSignUp();
}

class ResPaswordControlerImp extends ResPaswordControler {
  late TextEditingController newPasword;
  late TextEditingController virPasword;
  GlobalKey<FormState> globleKey = GlobalKey<FormState>();
  ResPasowerd resPasowerd = ResPasowerd(Get.find());
  String? email;
  StateRaqust? stateRaqust;

  @override
  void resPasword() {}

  @override
  void onInit() {
    newPasword = TextEditingController();
    virPasword = TextEditingController();
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  void dispose() {
    newPasword.dispose();
    virPasword.dispose();
    super.dispose();
  }

  @override
  void goToSuccuesSignUp() async {
    if (globleKey.currentState!.validate()) {
      if (newPasword.text == virPasword.text) {
        stateRaqust = StateRaqust.Laoding;
        update();
        var respons = await resPasowerd.postData(
            email: email!, paswored: newPasword.text);
        stateRaqust = headData(respons);
        if (stateRaqust == StateRaqust.succes) {
          if (respons['status'] == 'success') {
            Get.to(
              () => const SuccuesSignUp(),
              transition: Transition.upToDown,
            );
          }
        } else {
          Get.defaultDialog(title: "errro", middleText: "try agane ");
        }

        // print("${newPasword.text} and ${virPasword.text}");
      } else {
        Get.defaultDialog();
      }
    }
    // TODO: implement goToForgetPasword
  }
}
