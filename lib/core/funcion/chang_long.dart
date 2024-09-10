import 'package:get/get.dart';

import '../servises/servises.dart';

String changLong({required String en, required String ar}) {
  Servises servises = Get.find<Servises>();
  // ar en
  if (servises.sharedPreferences.getString("lang") == "ar") {
    return ar;
  } else {
    return en;
  }
}
