class CategoryModle {
  int? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryDescrption;
  String? categoryDescriptionAr;
  String? categoryImage;

  CategoryModle(
      {this.categoryId,
      this.categoryName,
      this.categoryNameAr,
      this.categoryDescrption,
      this.categoryDescriptionAr,
      this.categoryImage});

  CategoryModle.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryNameAr = json['category_name_ar'];
    categoryDescrption = json['category_descrption'];
    categoryDescriptionAr = json['category_description_ar'];
    categoryImage = json['category_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['category_name_ar'] = this.categoryNameAr;
    data['category_descrption'] = this.categoryDescrption;
    data['category_description_ar'] = this.categoryDescriptionAr;
    data['category_image'] = this.categoryImage;
    return data;
  }
}
