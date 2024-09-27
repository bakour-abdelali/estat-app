class EstateModle {
  int? estateId;
  String? estateTitle;
  String? estateDescription;
  int? estatePrice;
  String? estateWilaya;
  String? estateDairt;
  String? estateMunicipality;
  double? estateLongitude;
  double? estateLatitude;
  int? estateSize;
  int? estateNumberOfRomms;
  int? estateNumberOfBathromms;
  int? estateFloor;
  int? estateAvailabilityStatus;
  int? estateAgentId;
  String? estateDateAdd;
  int? estateFurnished;
  int? estateCountView;
  int? estateCountFavorites;
  int? estateContractTypeId;
  int? estateCategoryId;
  int? estateDiscount;
  String? fileLinke;

  EstateModle(
      {this.estateId,
      this.estateTitle,
      this.estateDescription,
      this.estatePrice,
      this.estateWilaya,
      this.estateDairt,
      this.estateMunicipality,
      this.estateLongitude,
      this.estateLatitude,
      this.estateSize,
      this.estateNumberOfRomms,
      this.estateNumberOfBathromms,
      this.estateFloor,
      this.estateAvailabilityStatus,
      this.estateAgentId,
      this.estateDateAdd,
      this.estateFurnished,
      this.estateCountView,
      this.estateCountFavorites,
      this.estateContractTypeId,
      this.estateCategoryId,
      this.estateDiscount,
      this.fileLinke});

  EstateModle.fromJson(Map<String, dynamic> json) {
    estateId = json['estate_id'];
    estateTitle = json['estate_title'];
    estateDescription = json['estate_description'];
    estatePrice = json['estate_price'];
    estateWilaya = json['estate_wilaya'];
    estateDairt = json['estate_dairt'];
    estateMunicipality = json['estate_municipality'];
    estateLongitude = json['estate_longitude'];
    estateLatitude = json['estate_latitude'];
    estateSize = json['estate_size'];
    estateNumberOfRomms = json['estate_number_of_romms'];
    estateNumberOfBathromms = json['estate_number_of_bathromms'];
    estateFloor = json['estate_floor'];
    estateAvailabilityStatus = json['estate_availability_status'];
    estateAgentId = json['estate_agent_id'];
    estateDateAdd = json['estate_date_add'];
    estateFurnished = json['estate_furnished'];
    estateCountView = json['estate_count_view'];
    estateCountFavorites = json['estate_count_favorites'];
    estateContractTypeId = json['estate_contract_type_id'];
    estateCategoryId = json['estate_category_id'];
    estateDiscount = json['estate_discount'];
    fileLinke = json['file_linke'];
  }
}
