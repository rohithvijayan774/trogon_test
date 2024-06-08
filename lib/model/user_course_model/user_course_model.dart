import 'data.dart';

class UserCourseModel {
  int? status;
  String? message;
  Data? data;

  UserCourseModel({this.status, this.message, this.data});

  factory UserCourseModel.fromJson(Map<String, dynamic> json) {
    return UserCourseModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
