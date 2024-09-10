import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/state_raqust.dart';
import '../../core/const/app_routes.dart';
import '../../core/funcion/alert_not_cox.dart';
import '../../core/funcion/head_data.dart';
import '../../core/servises/servises.dart';
import '../../data/remote/auth/login_data.dart';
import '../../view/auth/forget/forgetpaswred_screen.dart';
import '../../view/auth/sign_up_screen.dart';

abstract class LoginControler extends GetxController {
  void login();
  void gotoSingUp();
  void goToForgetPasword();
}

class LoginControlerImp extends LoginControler {
  late TextEditingController email;
  late TextEditingController pasword;
  StateRaqust? stateRaqust;
  LoginDataRemot loginDataRemot = LoginDataRemot(Get.find());
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool obscureText = true;
  Servises myServisess = Get.find();

  void showPaswored() {
    obscureText = !obscureText;
    update();
  }

  @override
  void gotoSingUp() {
    Get.to(() => const SignUpScreen(),
        transition: Transition.leftToRight,
        duration: const Duration(milliseconds: 800));
    //  Get.delete<LoginControlerImp>();
  }

  @override
  void login() async {
    var k = globalKey.currentState;
    if (k!.validate()) {
      stateRaqust = StateRaqust.Laoding;
      update();

      var respons = await loginDataRemot.postData(
          email: email.text, paswored: pasword.text);

      stateRaqust = headData(respons);
      // ahmed.benzema1@example.com
      // 20012001

      if (stateRaqust == StateRaqust.succes) {
        if (respons['status'] == 'success') {
          print(respons['data']['user_certain']);
          String s = respons['data']['user_certain'].toString();
          if (s == '1') {
            print("User is certain");
            print(respons['data']);

            myServisess.sharedPreferences
                .setString("user_lname", respons['data']['user_lname']);

            myServisess.sharedPreferences
                .setString("user_fname", respons['data']['user_fnam']);

            myServisess.sharedPreferences
                .setString("user_id", (respons['data']['user_id'].toString()));

            myServisess.sharedPreferences
                .setString("user_email", respons['data']['user_email']);

            myServisess.sharedPreferences
                .setString("user_phone", respons['data']['user_phone']);
            myServisess.sharedPreferences.setInt("step", 2);
            Get.offAllNamed(AppRoutes.myHomeScreen);

            //data.addAll(respons);

            // Get.offAndToNamed(AppRoutes.verficatonEmailSignUp,
            //     arguments: {'email': email.text});
          } else {
            print("نيك مك يا نتقش يا  ايرور يا رخيس");
            Get.offAndToNamed(AppRoutes.verficatonEmailSignUp,
                arguments: {'email': email.text});
          }
        } else {
          Get.defaultDialog(
              title: "waring ",
              middleText: 'the email or number phont is not fud');
        }
      } else {
        noIntrnat();
      }
      update();
    }

    @override
    void onInit() {
      email = TextEditingController();
      pasword = TextEditingController();
      super.onInit();
    }

    @override
    void dispose() {
      pasword.dispose();
      email.dispose();

      super.dispose();
    }

    @override
    void goToForgetPasword() {
      print(myServisess.sharedPreferences.getString("user_id"));
      // TODO: implement goToForgetPasword
      Get.to(
        () => ForgetPasowrdScreen(),
        transition: Transition.upToDown,
      );
    }
  }

  @override
  void goToForgetPasword() {
    Get.to(() => ForgetPasowrdScreen());
    // TODO: implement goToForgetPasword
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();
    pasword = TextEditingController();
    super.onInit();
  }
}
