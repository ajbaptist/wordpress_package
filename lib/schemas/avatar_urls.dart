class AvatarUrls {
  String? s24;
  String? s48;
  String? s96;

  AvatarUrls({
    this.s24,
    this.s48,
    this.s96,
  });

  AvatarUrls.fromJson(Map<String, dynamic> json) {
    s24 = json['24'];
    s48 = json['48'];
    s96 = json['96'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['24'] = s24;
    data['48'] = s48;
    data['96'] = s96;

    return data;
  }
}
