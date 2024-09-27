import 'package:estat_app/core/class/read_updata_delete_inser_view.dart';
import 'package:estat_app/core/const/app_links.dart';

class CategoryData {
  ReadUpdateDeleteInsertView crud = ReadUpdateDeleteInsertView();
  CategoryData(this.crud);
  getEstate({required String categoryId}) async {
    var respones =
        await crud.postData(AppLinkes.categoryViewEstate, {"id": categoryId});
    return respones.fold((l) => l, (r) => r);
  }
}
