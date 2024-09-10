class EvaluationModle {
  String? evaluationSummaryId;
  String? evaluationStartNumber;
  String? evaluationComment;
  String? evaluationUserId;
  String? evaluationDateCreate;
  String? userLname;
  String? userFname;
  String? userImage;
  String? userEmail;
  String? userPhone;

  EvaluationModle(
      {this.evaluationSummaryId,
      this.evaluationStartNumber,
      this.evaluationComment,
      this.evaluationUserId,
      this.evaluationDateCreate,
      this.userLname,
      this.userFname,
      this.userImage,
      this.userEmail,
      this.userPhone});

  EvaluationModle.fromJson(Map<String, dynamic> json) {
    evaluationSummaryId = json['evaluation_summary_id'];
    evaluationStartNumber = json['evaluation_start_number'];
    evaluationComment = json['evaluation_comment'];
    evaluationUserId = json['evaluation_user_id'];
    evaluationDateCreate = json['evaluation_date_create'];
    userLname = json['user_lname'];
    userFname = json['user_fname'];
    userImage = json['user_image'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
  }
}
