class Subject {
  String? id;
  String? title;
  String? courseId;
  String? levelId;
  String? order;
  String? thumbnail;
  String? background;
  String? icon;
  String? free;
  dynamic instructorId;

  Subject({
    this.id,
    this.title,
    this.courseId,
    this.levelId,
    this.order,
    this.thumbnail,
    this.background,
    this.icon,
    this.free,
    this.instructorId,
  });

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        id: json['id'] as String?,
        title: json['title'] as String?,
        courseId: json['course_id'] as String?,
        levelId: json['level_id'] as String?,
        order: json['order'] as String?,
        thumbnail: json['thumbnail'] as String?,
        background: json['background'] as String?,
        icon: json['icon'] as String?,
        free: json['free'] as String?,
        instructorId: json['instructor_id'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'course_id': courseId,
        'level_id': levelId,
        'order': order,
        'thumbnail': thumbnail,
        'background': background,
        'icon': icon,
        'free': free,
        'instructor_id': instructorId,
      };
}
