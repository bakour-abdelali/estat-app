import 'package:estat_app/core/class/state_raqust.dart';
import 'package:estat_app/core/class/stautus.dart';
import 'package:estat_app/core/const/app_routes.dart';
import 'package:estat_app/core/funcion/alert_not_cox.dart';
import 'package:estat_app/core/funcion/head_data.dart';
import 'package:estat_app/data/remote/screen/homm_page_data.dart';
import 'package:get/get.dart';

import '../../../data/modle/category_modle.dart';
import '../../../data/modle/estate_contract_type_modle.dart';
import '../../../data/modle/user_data.dart';

class HommePageController extends GetxController {
  final HommePageData _data = HommePageData(Get.find());
  late StateRaqust stateRaqust;
  List<CategoryModle> categoryModle = [];
  List<EstateContractTypeModle> estateContractTypeModle = [];
  UserPreferences userPreferences = UserPreferences();
  goTocategoryScreen(int index) {
    Get.toNamed(AppRoutes.categoryScreen,
        arguments: {"categoryModle": categoryModle, "indexActive": index});
  }

  getData() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.getData();
    stateRaqust = headData(respones);
    if (stateRaqust == StateRaqust.succes) {
      print("respones ===${respones["data"]["category"]}");
      final category = respones["data"]["category"];
      final estateContractType = respones["data"]["estate_contract_type"];
      if (category[AppStatus.status] == AppStatus.sucsess &&
          estateContractType[AppStatus.status] == AppStatus.sucsess) {
        List categoryData = category['data'];
        List estateContractTypeData = estateContractType['data'];
        categoryModle
            .addAll(categoryData.map((e) => CategoryModle.fromJson(e)));
        estateContractTypeModle.addAll(estateContractTypeData
            .map((e) => EstateContractTypeModle.fromJson(e)));
      } else {
        stateRaqust = StateRaqust.fuler;
      }
    } else {
      noIntrnat();
    }
    update();
  }

  @override
  void onInit() {
    // userLName
    getData();
    super.onInit();
  }
}
