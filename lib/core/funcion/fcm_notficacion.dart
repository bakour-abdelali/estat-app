// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:get/get.dart';
// import 'package:summarize_me_app/controller/screen/notification/notification_view_controller.dart';

// import '../../controller/screen/menu/homme_menu_controller.dart';

// Future<void> requestNotficaoin() async {
//   FirebaseMessaging service = FirebaseMessaging.instance;
//   try {
//     NotificationSettings settings = await service.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     print('User granted permission: ${settings.authorizationStatus}');
//   } catch (e) {
//     return;
//   }
// }

// void fcmNotficacion() {
//   FirebaseMessaging.onMessage.listen((message) {
//     print(message.data);
//     Get.snackbar(
//       message.notification!.title!,
//       message.notification!.body!,
//     );
//     refrashRealTime(message.data);
//   });
// }

// void refrashRealTime(data) {
//   if (data["pagename"] == "delete") {
//     HommeMenuController controller = Get.put(HommeMenuController());
//     controller.signOut();
//   } else {
//     NotificationViewController controller =
//         Get.put(NotificationViewController());

//     controller.refreshData();
//   }
// }
