import '../../../../core/const/app_links.dart';

import '../../../../core/class/read_updata_delete_inser_view.dart';

class VerfayCode {
  ReadUpdateDeleteInsertView curd = ReadUpdateDeleteInsertView();
  VerfayCode(this.curd);
  postData({required String email, required String user_verfaicode}) async {
    var rospans = await curd.postData(AppLinkes.verfaycodeForgat,
        {"email": email, "user_verfaicode": user_verfaicode});
    return rospans.fold((l) => l, (r) => r);
  }
}
