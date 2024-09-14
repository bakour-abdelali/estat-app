import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../core/class/navigator_bar.dart';
import '../../view/screen/homm_screen.dart';

abstract class HommeScreenController extends GetxController {
  changePage(int index);
}

class HommeScreenControllerImp extends HommeScreenController {
  late int curntPage;
  List<Widget> screen = [
    const HommScreen(),

    Text("   OfferScreen(),"),
    Text("   const NotificationScreen(),"),
    Text("   const SettingScreen(),"),
    // Center(
    //   child: Text("profail"),
    // ),
  ];
  List<NavigatorBar> navigtor = const [
    NavigatorBar(title: "Home", iconData: Icons.home_outlined),
    NavigatorBar(
      title: "offer",
      iconData: Icons.shopping_cart_outlined,
    ),
    NavigatorBar(
      title: "notification",
      iconData: Icons.notifications_active_outlined,
    ),
    NavigatorBar(
      title: "satting",
      iconData: Icons.settings_outlined,
    ),
  ];
  @override
  changePage(int index) {
    curntPage = index;
    update();
    // TODO: implement changePage
  }

  @override
  void onInit() {
    // TODO: implement onInit
    curntPage = 0;
    //FirebaseMessaging.instance.subscribeToTopic("user");
    super.onInit();
  }
}
