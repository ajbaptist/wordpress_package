/// All API related errors are thrown as an object of this class.
class WordPressError {
  String? code;
  String? message;
  Data? data;

  WordPressError({
    this.code,
    this.message,
    this.data,
  });

  WordPressError.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['code'] = code;
    data['message'] = message;
    data['data'] = this.data?.toJson();

    return data;
  }

  @override
  String toString() {
    // ignore: prefer_null_aware_operators
    return 'WordPress Error! code: $code, message: $message, status: ${data == null ? null : data?.status}';
  }
}

class Data {
  int? status;

  Data({this.status});

  Data.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['status'] = status;

    return data;
  }
}
