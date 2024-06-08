import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trogon_test/const.dart';
import 'package:trogon_test/model/user_course_model/data.dart';
import 'package:trogon_test/model/user_course_model/subject.dart';
import 'package:trogon_test/model/user_course_model/user_course_model.dart';

class Controller extends ChangeNotifier {
  UserCourseModel? _userCourseModel;
  UserCourseModel get userCourseModel => _userCourseModel!;

  List<UserCourseModel>? user;

  Future<void> fetchCourses() async {
    try {
      var response =
          await http.get(Uri.parse("$myCourseBaseurl?auth_token=$authToken"));
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        print('failed to fetch');
      }
    } catch (e) {
      print('Error : : : $e');
    }
  }
}
