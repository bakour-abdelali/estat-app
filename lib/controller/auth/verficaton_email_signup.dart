import 'package:get/get.dart';

import '../../core/class/state_raqust.dart';

import '../../core/funcion/head_data.dart';

import '../../core/servises/servises.dart';
import '../../data/remote/auth/verfiay_code.dart';
import '../../view/auth/susse_sign_up.dart';

abstract class VerficatonEmailSignUpController extends GetxController {
  void goToSuccer(String value);
}

class VerficatonEmailSignUpImp extends VerficatonEmailSignUpController {
  late String code;
  late String email;
  StateRaqust? stateRaqust;
  Servises myServisess = Get.find();
  //SingupControlerImp _controlerImp = Get.find();
  VerfayCodeRemot verfayCodeRemot = VerfayCodeRemot(Get.find());
  @override
  void goToSuccer(String value) async {
    print(value);
    stateRaqust = StateRaqust.Laoding;
    update();

    // print("-----> ");
    print(email);
    var respons =
        await verfayCodeRemot.postData(email: email, verfaicode: value);

    stateRaqust = headData(respons);
    print("<------------------");
    if (stateRaqust == StateRaqust.succes) {
      if (respons['status'] == 'success') {
        print(respons['status']);

        //data.addAll(respons);

        Get.to(const SuccessSignUpScreen()); //SuccuesSignUp
        // Get.offAndToNamed(
        //   AppRoutes.restcode,
        // );
        print('${respons}');
      } else {
        stateRaqust = StateRaqust.fuler;
        update();
        print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        // Get.defaultDialog(
        //     title: "waring ",
        //     middleText: 'the email or number phont is not fud');
      }
    } else {
      Get.defaultDialog(
          title: "waring ", middleText: 'the email or number phont is not fud');
    }
    update();

    // Get.to(const SuccessSignUpScreen()); //SuccuesSignUp
  }

  sandCode() async {
    var respons = await verfayCodeRemot.sandVerfay(email: email);
    print(respons['status']);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email = Get.arguments['email'];
    // myServisess.sharedPreferences;
    //email = 'alialiali@gmail.com';
    print(email);
    super.onInit();
  }
}
