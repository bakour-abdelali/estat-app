import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';


import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_downloader/flutter_downloader.dart';


class Servises extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<Servises> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
    await FlutterDownloader.initialize(
        debug:
            false, // optional: set to false to disable printing logs to console (default: true)
        ignoreSsl:
            true // option: set to false to disable working with http links (default: false)
        );

    return this;
  }
}

Future<Servises> inial() async {
  return await Get.putAsync(() => Servises().init());
}
