
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/state_raqust.dart';
import '../../core/const/app_routes.dart';
import '../../core/funcion/alert_not_cox.dart';
import '../../core/funcion/head_data.dart';
import '../../data/remote/auth/signup_data_remot.dart';
import '../../view/auth/logion_screen.dart';

abstract class SingupControler extends GetxController {
  // ignore: non_constant_identifier_names
  void Singup();
  void gotoLogin();
  // ignore: non_constant_identifier_names
  void goTovrficationEmail();
}

class SingupControlerImp extends SingupControler {
  late TextEditingController email;
  late TextEditingController pasword;
  late TextEditingController farstName;
  late TextEditingController lastName;

  late TextEditingController phon;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool obscureText = true;
  StateRaqust? stateRaqust;
  SignUpDataRemot signUpDataRemot = SignUpDataRemot(Get.find());
  Map data = {};

  void showPaswored() {
    obscureText = !obscureText;
    update();
  }

  @override
  void gotoLogin() {
    Get.offAll(
        transition: Transition.rightToLeft,
        () => LoginScreen(),
        duration: const Duration(milliseconds: 800));
    //  Get.delete<SingupControlerImp>();
  }

  @override
  void Singup() {}

  @override
  void onInit() {
   
    email = TextEditingController();
    pasword = TextEditingController();
    farstName = TextEditingController();
    lastName = TextEditingController();
    phon = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    pasword.dispose();
    email.dispose();
    phon.dispose();
    farstName.dispose();

    super.dispose();
  }

  @override
  void goTovrficationEmail() async {
    if (globalKey.currentState!.validate()) {
      stateRaqust = StateRaqust.Laoding;
      update();

      var respons = await signUpDataRemot.postData(
          email: email.text,
          phne: phon.text,
          paswored: pasword.text,
          usernameF: farstName.text,
          username: lastName.text);
      stateRaqust = headData(respons);

      if (stateRaqust == StateRaqust.succes) {
        if (respons['status'] == 'success') {
          Get.offAndToNamed(AppRoutes.verficatonEmailSignUp,
              arguments: {'email': email.text});
        } else {
          stateRaqust = StateRaqust.fuler;
        }
      } else {
        noIntrnat();
      }
      update();
    }
  }
}
