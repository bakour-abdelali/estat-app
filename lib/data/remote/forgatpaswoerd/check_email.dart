import '../../../../core/class/read_updata_delete_inser_view.dart';
import '../../../../core/const/app_links.dart';

class CheckEmail {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  CheckEmail(this.crud);
  postData({
    required String email,
  }) async {
    var rspons = await crud.postData(AppLinkes.checkemail, {
      "email": email,
    });
    return rspons.fold((l) => l, (r) => r);
  }
}
