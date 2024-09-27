import 'package:estat_app/core/class/read_updata_delete_inser_view.dart';
import 'package:estat_app/core/const/app_links.dart';

class HommePageData {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  HommePageData(this.crud);
  getData() async {
    var respones = await crud.postData(AppLinkes.hommePage, {});
    return respones.fold((l) => l, (r) => r);
  }
}
