import 'subject.dart';
import 'userdata.dart';

class Data {
  Userdata? userdata;
  List<Subject>? subjects;
  List<dynamic>? pyqExams;
  List<dynamic>? upcomingExams;
  String? syllabus;
  String? practiceLink;

  Data({
    this.userdata,
    this.subjects,
    this.pyqExams,
    this.upcomingExams,
    this.syllabus,
    this.practiceLink,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userdata: json['userdata'] == null
            ? null
            : Userdata.fromJson(json['userdata'] as Map<String, dynamic>),
        subjects: (json['subjects'] as List<dynamic>?)
            ?.map((e) => Subject.fromJson(e as Map<String, dynamic>))
            .toList(),
        pyqExams: json['pyq_exams'] as List<dynamic>?,
        upcomingExams: json['upcoming_exams'] as List<dynamic>?,
        syllabus: json['syllabus'] as String?,
        practiceLink: json['practice_link'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userdata': userdata?.toJson(),
        'subjects': subjects?.map((e) => e.toJson()).toList(),
        'pyq_exams': pyqExams,
        'upcoming_exams': upcomingExams,
        'syllabus': syllabus,
        'practice_link': practiceLink,
      };
}
