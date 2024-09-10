class UserModel {
  String? lname;
  String? fname;
  int? id;
  String? email;
  String? phone;
  String? image;

  UserModel(
      {this.lname, this.fname, this.id, this.email, this.phone, this.image});

  // تحويل من JSON (أو Map) إلى UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      lname: json['user_lname'] as String?,
      fname: json['user_fname'] as String?,
      id: json.containsKey('user_id')
          ? int.tryParse(json['user_id'].toString())
          : null,
      email: json['user_email'] as String?,
      phone: json['user_phone'] as String?,
      image: json['user_image'] as String?,
    );
  }

  // تحويل من UserModel إلى Map لسهولة التخزين في SharedPreferences
  Map<String, dynamic> toJson() {
    return {
      'user_lname': this.lname,
      'user_fname': this.fname,
      'user_id': this.id?.toString(),
      'user_email': this.email,
      'user_phone': this.phone,
      'user_image': this.image,
    };
  }
}
