import '../../../../core/class/read_updata_delete_inser_view.dart';
import '../../../../core/const/app_links.dart';

class SignUpDataRemot {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  SignUpDataRemot(this.crud);
  postData(
      {required String email,
      required String phne,
      required String paswored,
      required String username,
      required String usernameF}) async {
    var rspons = await crud.postData(AppLinkes.signup, {
      "email": email,
      "phone": phne,
      "paswored": paswored,
      "username": username,
      "usernameF": usernameF,
    });
    // print('rspons.fold((l) => l, (r) => r)');
    // print(rspons.fold((l) => l, (r) => r));
    return rspons.fold((l) => l, (r) => r);
  }
}
