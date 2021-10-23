class Guid {
  String? rendered;
  String? raw;

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    raw = json['raw'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['rendered'] = rendered;
    data['raw'] = raw;

    return data;
  }
}
