class EstateContractTypeModle {
  String? estateContractTypeName;
  String? estateContractTypeDescrption;
  String? contractTypeCreatedAt;
  String? contractTypeUpdatedAt;
  int? contractTypeStatus;
  String? estateContractTypeNameAr;
  String? estateContractDescrptionAr;
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
  String? image;

  EstateContractTypeModle(
      {this.estateContractTypeName,
      this.estateContractTypeDescrption,
      this.contractTypeCreatedAt,
      this.contractTypeUpdatedAt,
      this.contractTypeStatus,
      this.estateContractTypeNameAr,
      this.estateContractDescrptionAr,
      this.estateId,
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
      this.image});

  EstateContractTypeModle.fromJson(Map<String, dynamic> json) {
    estateContractTypeName = json['estate_contract_type_name'];
    estateContractTypeDescrption = json['estate_contract_type_descrption'];
    contractTypeCreatedAt = json['contract_type_created_at'];
    contractTypeUpdatedAt = json['contract_type_updated_at'];
    contractTypeStatus = json['contract_type_status'];
    estateContractTypeNameAr = json['estate_contract_type_name_ar'];
    estateContractDescrptionAr = json['estate_contract_descrption_ar'];
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
    image = json['image'];
  }
}
