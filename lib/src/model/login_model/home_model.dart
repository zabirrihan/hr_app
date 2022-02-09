import 'dart:convert';

List<HomeModel> homeModelFromJson(String str) =>
    List<HomeModel>.from(json.decode(str).map((x) => HomeModel.fromJson(x)));

class HomeModel {
  HomeModel({
    required this.st,
    required this.userData,
  });

  int st;
  UserData userData;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        st: json["st"] ?? 0,
        userData: json["userData"] == null
            ? UserData.fromJson({})
            : UserData.fromJson(json["userData"]),
      );
}

class UserData {
  UserData({
    required this.userId,
    required this.userName,
    required this.designation,
    required this.signature,
    required this.email,
    required this.mobileNo,
    required this.about,
    required this.photo,
    required this.userLogin,
    required this.userType,
  });

  String userId;
  String userName;
  String designation;
  String signature;
  String email;
  String mobileNo;
  String about;
  String photo;
  bool userLogin;
  String userType;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        userId: json["UserID"] ?? "",
        userName: json["UserName"] ?? "",
        designation: json["Designation"] ?? "",
        signature: json["Signature"] ?? "",
        email: json["Email"] ?? "",
        mobileNo: json["MobileNo"] ?? "",
        about: json["About"] ?? "",
        photo: json["Photo"] ?? "",
        userLogin: json["user_login"] ?? false,
        userType: json["user_type"] ?? "",
      );
}
