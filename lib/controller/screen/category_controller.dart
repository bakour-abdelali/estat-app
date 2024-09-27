import 'package:estat_app/core/class/state_raqust.dart';
import 'package:estat_app/core/funcion/alert_not_cox.dart';
import 'package:estat_app/data/modle/estate_modle.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../../core/class/stautus.dart';
import '../../core/funcion/head_data.dart';
import '../../data/modle/category_modle.dart';
import '../../data/remote/screen/category_data.dart';

final class CategoryController extends GetxController {
  final CategoryData _data = CategoryData(Get.find());
  late StateRaqust stateRaqust;
  late List<CategoryModle> categoryModle;
  List<EstateModle> modles = [];
  late int indexActive;
  late final ScrollController scrollController;
  final List<GlobalKey> itemKeys = [];

  initial() {
    categoryModle = [];
    categoryModle.addAll(Get.arguments['categoryModle']);
    indexActive = Get.arguments['indexActive'];
    scrollController = ScrollController();

    for (int i = 0; i < categoryModle.length; i++) {
      itemKeys.add(GlobalKey());
    }

    scrollToItem(indexActive);
  }

  changeIndex(int newIndex) {
    if (newIndex != indexActive) {
      indexActive = newIndex;
      modles.clear();
      scrollToItem(indexActive);
      update(['index']);
      getData();
    }
  }

  getData() async {
    stateRaqust = StateRaqust.Laoding;
    update();
    var respones = await _data.getEstate(
        categoryId: categoryModle[indexActive].categoryId.toString());
    stateRaqust = headData(respones);

    if (stateRaqust == StateRaqust.succes) {
      if (respones[AppStatus.status] == AppStatus.sucsess) {
        List dataList = respones['data'];

        modles.addAll(dataList.map((e) => EstateModle.fromJson(e)));
      } else {
        stateRaqust = StateRaqust.fuler;
      }
    } else {
      noIntrnat();
    }
    update();
  }

  void refrachData() {
    modles.clear();
    getData();
  }

  @override
  void onClose() {
    scrollController.dispose();
    categoryModle.clear();
    modles.clear();
    super.onClose();
  }

  void scrollToItem(int index) {
    // الحصول على الـ RenderBox للعنصر المحدد باستخدام الـ GlobalKey
    final RenderBox? renderBox =
        itemKeys[index].currentContext?.findRenderObject() as RenderBox?;

    if (renderBox != null) {
      // الحصول على حجم العنصر وموضعه داخل الـ ListView
      final double itemPosition = renderBox.localToGlobal(Offset.zero).dx;

      // الحصول على حجم عرض الشاشة أو العرض المرئي للـ ListView
      final double viewPortWidth = scrollController.position.viewportDimension;

      // التأكد من أن العنصر ليس مرئيًا بشكل كامل أو أنه خارج العرض
      if (itemPosition < 0 ||
          itemPosition + renderBox.size.width > viewPortWidth) {
        // حساب الموضع المستهدف بحيث يظهر العنصر في منتصف الشاشة تقريبًا
        final targetOffset = scrollController.offset +
            itemPosition -
            (viewPortWidth / 2) +
            (renderBox.size.width / 2);

        // التأكد من أن الموضع ضمن نطاق التمرير المتاح
        final maxScrollExtent = scrollController.position.maxScrollExtent;
        final minScrollExtent = scrollController.position.minScrollExtent;
        final scrollTo = targetOffset.clamp(minScrollExtent, maxScrollExtent);

        // تحريك الـ ListView إلى الموضع المطلوب
        scrollController.animateTo(
          scrollTo,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void onInit() {
    initial();

    getData();
    super.onInit();
  }
}
