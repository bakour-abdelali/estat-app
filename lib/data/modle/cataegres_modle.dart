class CataegreModle {
  String? cataegresId;
  String? cataegresName;
  String? cataegresNameAr;
  String? cataegresImage;
  String? cataegresDatetime;

  CataegreModle(
      {this.cataegresId,
      this.cataegresName,
      this.cataegresNameAr,
      this.cataegresImage,
      this.cataegresDatetime});

  CataegreModle.fromJson(Map<String, dynamic> json) {
    cataegresId = json['cataegres_id'];
    cataegresName = json['cataegres_name'];
    cataegresNameAr = json['cataegres_name_ar'];
    cataegresImage = json['cataegres_image'];
    cataegresDatetime = json['cataegres_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cataegres_id'] = cataegresId;
    data['cataegres_name'] = cataegresName;
    data['cataegres_name_ar'] = cataegresNameAr;
    data['cataegres_image'] = cataegresImage;
    data['cataegres_datetime'] = cataegresDatetime;
    return data;
  }
}
