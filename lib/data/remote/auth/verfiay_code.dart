import '../../../../core/class/read_updata_delete_inser_view.dart';
import '../../../../core/const/app_links.dart';

class VerfayCodeRemot {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  VerfayCodeRemot(this.crud);
  postData({required String email, required String verfaicode}) async {
    var rspons = await crud.postData(AppLinkes.verfaicode, {
      "email": email,
      "user_verfaicode": verfaicode,
    });
    // print('rspons.fold((l) => l, (r) => r)');
    // print(rspons.fold((l) => l, (r) => r));
    return rspons.fold((l) => l, (r) => r);
  }

  sandVerfay({required String email}) async {
    var rspons = await crud.postData(AppLinkes.reSand, {
      "email": email,
    });
    // print('rspons.fold((l) => l, (r) => r)');
    // print(rspons.fold((l) => l, (r) => r));
    return rspons.fold((l) => l, (r) => r);
  }
}
