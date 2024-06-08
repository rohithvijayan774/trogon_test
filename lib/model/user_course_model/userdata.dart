class Userdata {
  String? id;
  String? firstName;
  String? lastName;
  String? phone;
  String? countryCode;
  dynamic phoneSecondary;
  String? userEmail;
  String? email;
  String? gender;
  String? place;
  String? roleId;
  String? roleLabel;
  String? deviceId;
  String? status;
  String? courseId;
  String? courseName;
  String? courseType;
  String? image;
  dynamic androidVersion;
  String? deviceIdMessage;
  String? noCourseText;
  String? noCourseImage;
  String? contactEmail;
  String? contactPhone;
  String? contactWhatsapp;
  String? contactAddress;
  String? contactAbout;
  String? zoomId;
  String? zoomPassword;
  String? zoomApiKey;
  String? zoomSecretKey;
  String? zoomWebDomain;
  String? token;
  String? privacyPolicy;
  String? privacyPolicyText;
  int? coins;

  Userdata({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.countryCode,
    this.phoneSecondary,
    this.userEmail,
    this.email,
    this.gender,
    this.place,
    this.roleId,
    this.roleLabel,
    this.deviceId,
    this.status,
    this.courseId,
    this.courseName,
    this.courseType,
    this.image,
    this.androidVersion,
    this.deviceIdMessage,
    this.noCourseText,
    this.noCourseImage,
    this.contactEmail,
    this.contactPhone,
    this.contactWhatsapp,
    this.contactAddress,
    this.contactAbout,
    this.zoomId,
    this.zoomPassword,
    this.zoomApiKey,
    this.zoomSecretKey,
    this.zoomWebDomain,
    this.token,
    this.privacyPolicy,
    this.privacyPolicyText,
    this.coins,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
        id: json['id'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        phone: json['phone'] as String?,
        countryCode: json['country_code'] as String?,
        phoneSecondary: json['phone_secondary'] as dynamic,
        userEmail: json['user_email'] as String?,
        email: json['email'] as String?,
        gender: json['gender'] as String?,
        place: json['place'] as String?,
        roleId: json['role_id'] as String?,
        roleLabel: json['role_label'] as String?,
        deviceId: json['device_id'] as String?,
        status: json['status'] as String?,
        courseId: json['course_id'] as String?,
        courseName: json['course_name'] as String?,
        courseType: json['course_type'] as String?,
        image: json['image'] as String?,
        androidVersion: json['android_version'] as dynamic,
        deviceIdMessage: json['device_id_message'] as String?,
        noCourseText: json['no_course_text'] as String?,
        noCourseImage: json['no_course_image'] as String?,
        contactEmail: json['contact_email'] as String?,
        contactPhone: json['contact_phone'] as String?,
        contactWhatsapp: json['contact_whatsapp'] as String?,
        contactAddress: json['contact_address'] as String?,
        contactAbout: json['contact_about'] as String?,
        zoomId: json['zoom_id'] as String?,
        zoomPassword: json['zoom_password'] as String?,
        zoomApiKey: json['zoom_api_key'] as String?,
        zoomSecretKey: json['zoom_secret_key'] as String?,
        zoomWebDomain: json['zoom_web_domain'] as String?,
        token: json['token'] as String?,
        privacyPolicy: json['privacy_policy'] as String?,
        privacyPolicyText: json['privacy_policy_text'] as String?,
        coins: json['coins'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'phone': phone,
        'country_code': countryCode,
        'phone_secondary': phoneSecondary,
        'user_email': userEmail,
        'email': email,
        'gender': gender,
        'place': place,
        'role_id': roleId,
        'role_label': roleLabel,
        'device_id': deviceId,
        'status': status,
        'course_id': courseId,
        'course_name': courseName,
        'course_type': courseType,
        'image': image,
        'android_version': androidVersion,
        'device_id_message': deviceIdMessage,
        'no_course_text': noCourseText,
        'no_course_image': noCourseImage,
        'contact_email': contactEmail,
        'contact_phone': contactPhone,
        'contact_whatsapp': contactWhatsapp,
        'contact_address': contactAddress,
        'contact_about': contactAbout,
        'zoom_id': zoomId,
        'zoom_password': zoomPassword,
        'zoom_api_key': zoomApiKey,
        'zoom_secret_key': zoomSecretKey,
        'zoom_web_domain': zoomWebDomain,
        'token': token,
        'privacy_policy': privacyPolicy,
        'privacy_policy_text': privacyPolicyText,
        'coins': coins,
      };
}
