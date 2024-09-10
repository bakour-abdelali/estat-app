class NotificationModle {
  String? notificationId;
  String? notificationUserId;
  String? notificationTitle;
  String? notificationMessage;
  String? messageDate;
  String? userId;

  NotificationModle(
      {this.notificationId,
      this.notificationUserId,
      this.notificationTitle,
      this.notificationMessage,
      this.messageDate,
      this.userId});

  NotificationModle.fromJson(Map<String, dynamic> json) {
    notificationId = json['notification_id'];
    notificationUserId = json['notification_user_id'];
    notificationTitle = json['notification_title'];
    notificationMessage = json['notification_message'];
    messageDate = json['message_date'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['notification_id'] = notificationId;
    data['notification_user_id'] = notificationUserId;
    data['notification_title'] = notificationTitle;
    data['notification_message'] = notificationMessage;
    data['message_date'] = messageDate;
    data['user_id'] = userId;
    return data;
  }
}
