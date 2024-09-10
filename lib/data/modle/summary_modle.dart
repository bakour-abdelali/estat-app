class SummaryModle {
  String? summaryId;
  String? summaryUserId;
  String? summaryCataegreId;
  String? summaryBookTatile;
  String? summaryDescrbtion;
  String? summaryPdf;
  String? summaryText;
  String? summaryAudio;
  String? summaryImage;
  String? summaryAutherBook;
  String? summaryDateCreat;
  String? userId;
  String? userEmail;
  String? userPhone;
  String? userLname;
  String? userFname;
  String? userImage;
  String? userPasword;
  String? userApproutes;
  String? userVerfaicode;
  String? userDatacreate;
  String? cataegresId;
  String? cataegresName;
  String? cataegresNameAr;
  String? cataegresImage;
  String? cataegresDatetime;
  String? evaluationSummaryId;
  String? evaluationDateCreate;
  String? countEvaluation;
  String? avgEvaluation;

  SummaryModle(
      {this.summaryId,
      this.summaryUserId,
      this.summaryCataegreId,
      this.summaryBookTatile,
      this.summaryDescrbtion,
      this.summaryPdf,
      this.summaryText,
      this.summaryAudio,
      this.summaryImage,
      this.summaryAutherBook,
      this.summaryDateCreat,
      this.userId,
      this.userEmail,
      this.userPhone,
      this.userLname,
      this.userFname,
      this.userImage,
      this.userPasword,
      this.userApproutes,
      this.userVerfaicode,
      this.userDatacreate,
      this.cataegresId,
      this.cataegresName,
      this.cataegresNameAr,
      this.cataegresImage,
      this.cataegresDatetime,
      this.evaluationSummaryId,
      this.evaluationDateCreate,
      this.countEvaluation,
      this.avgEvaluation});

  SummaryModle.fromJson(Map<String, dynamic> json) {
    summaryId = json['summary_id'];
    summaryUserId = json['summary_user_id'];
    summaryCataegreId = json['summary_cataegre_id'];
    summaryBookTatile = json['summary_book_tatile'];
    summaryDescrbtion = json['summary_descrbtion'];
    summaryPdf = json['summary_pdf'];
    summaryText = json['summary_text'];
    summaryAudio = json['summary_audio'];
    summaryImage = json['summary_image'];
    summaryAutherBook = json['summary_auther_book'];
    summaryDateCreat = json['summary_date_creat'];
    userId = json['user_id'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    userLname = json['user_lname'];
    userFname = json['user_fname'];
    userImage = json['user_image'];
    userPasword = json['user_pasword'];
    userApproutes = json['user_approutes'];
    userVerfaicode = json['user_verfaicode'];
    userDatacreate = json['user_datacreate'];
    cataegresId = json['cataegres_id'];
    cataegresName = json['cataegres_name'];
    cataegresNameAr = json['cataegres_name_ar'];
    cataegresImage = json['cataegres_image'];
    cataegresDatetime = json['cataegres_datetime'];
    evaluationSummaryId = json['evaluation_summary_id'];
    evaluationDateCreate = json['evaluation_date_create'];
    countEvaluation = json['countEvaluation'];
    avgEvaluation = json['avgEvaluation'];
  }
}
