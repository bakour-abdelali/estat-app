import '../../../../core/const/app_links.dart';

import '../../../../core/class/read_updata_delete_inser_view.dart';

class ResPasowerd {
  ReadUpdateDeleteInsertView curd = ReadUpdateDeleteInsertView();
  ResPasowerd(this.curd);
  postData({required String email, required String paswored}) async {
    var respons = await curd.postData(
        AppLinkes.respaswored, {"email": email, "paswored": paswored});
    return respons.fold((l) => l, (r) => r);
  }
}
