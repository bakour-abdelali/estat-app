import '../../../../core/class/read_updata_delete_inser_view.dart';
import '../../../../core/const/app_links.dart';

class LoginDataRemot {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  LoginDataRemot(this.crud);
  postData({
    required String email,
    required String paswored,
  }) async {
    var rspons = await crud.postData(AppLinkes.login, {
      "email": email,
      "password": paswored,
    });
    // print('rspons.fold((l) => l, (r) => r)');
    // print(rspons.fold((l) => l, (r) => r));

    return rspons.fold((l) => l, (r) => r);
  }
}
