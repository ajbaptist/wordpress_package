class Settings {
  String? title;
  String? description;
  String? url;
  String? email;
  String? timezone;
  String? dateFormat;
  String? timeFormat;
  int? startOfWeek;
  String? language;
  bool? useSmilies;
  int? defaultCategory;
  String? defaultPostFormat;
  int? postsPerPage;
  String? defaultPingStatus;
  String? defaultCommentStatus;

  Settings({
    this.title,
    this.description,
    this.url,
    this.email,
    this.timezone,
    this.dateFormat,
    this.timeFormat,
    this.startOfWeek,
    this.language,
    this.useSmilies,
    this.defaultCategory,
    this.defaultPostFormat,
    this.postsPerPage,
    this.defaultPingStatus,
    this.defaultCommentStatus,
  });

  Settings.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    email = json['email'];
    timezone = json['timezone'];
    dateFormat = json['date_format'];
    timeFormat = json['time_format'];
    startOfWeek = json['start_of_week'];
    language = json['language'];
    useSmilies = json['use_smilies'];
    defaultCategory = json['default_category'];
    defaultPostFormat = json['default_post_format'];
    postsPerPage = json['posts_per_page'];
    defaultPingStatus = json['default_ping_status'];
    defaultCommentStatus = json['default_comment_status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['email'] = email;
    data['timezone'] = timezone;
    data['date_format'] = dateFormat;
    data['time_format'] = timeFormat;
    data['start_of_week'] = startOfWeek;
    data['language'] = language;
    data['use_smilies'] = useSmilies;
    data['default_category'] = defaultCategory;
    data['default_post_format'] = defaultPostFormat;
    data['posts_per_page'] = postsPerPage;
    data['default_ping_status'] = defaultPingStatus;
    data['default_comment_status'] = defaultCommentStatus;

    return data;
  }
}
