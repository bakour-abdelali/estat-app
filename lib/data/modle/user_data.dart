import 'package:estat_app/core/servises/servises.dart';
import 'package:get/get.dart';

class UserPreferences {
  Servises myServise = Get.find();

  // مفاتيح التخزين
  static const String _keyUserLname = "user_lname";
  static const String _keyUserFname = "user_fname";
  static const String _keyUserId = "user_id";
  static const String _keyUserEmail = "user_email";
  static const String _keyUserPhone = "user_phone";

  // استرجاع بيانات المستخدم
  String? getLname() => myServise.sharedPreferences.getString(_keyUserLname);

  String? getFname() => myServise.sharedPreferences.getString(_keyUserFname);

  String? getId() => myServise.sharedPreferences.getString(_keyUserId);

  String? getEmail() => myServise.sharedPreferences.getString(_keyUserEmail);

  String? getPhone() => myServise.sharedPreferences.getString(_keyUserPhone);
}
