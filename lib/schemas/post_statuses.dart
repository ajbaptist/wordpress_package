import 'links.dart';

class PostStatuses {
  Publish? publish;
  Future? future;
  Draft? draft;
  Pending? pending;
  Private? private;
  Trash? trash;

  PostStatuses({
    this.publish,
    this.future,
    this.draft,
    this.pending,
    this.private,
    this.trash,
  });

  PostStatuses.fromJson(Map<String, dynamic> json) {
    publish =
        json['publish'] != null ? Publish.fromJson(json['publish']) : null;
    future = json['future'] != null ? Future.fromJson(json['future']) : null;
    draft = json['draft'] != null ? Draft.fromJson(json['draft']) : null;
    pending =
        json['pending'] != null ? Pending.fromJson(json['pending']) : null;
    private =
        json['private'] != null ? Private.fromJson(json['private']) : null;
    trash = json['trash'] != null ? Trash.fromJson(json['trash']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['publish'] = publish?.toJson();
    data['future'] = future?.toJson();
    data['draft'] = draft?.toJson();
    data['pending'] = pending?.toJson();
    data['private'] = private?.toJson();
    data['trash'] = trash?.toJson();

    return data;
  }
}

class Publish {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Publish({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Publish.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Future {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Future({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Future.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Draft {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Draft({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Draft.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Pending {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Pending({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Pending.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Private {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Private({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Private.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Trash {
  String? name;
  bool? private;
  bool? protected;
  bool? public;
  bool? queryable;
  bool? showInList;
  String? slug;
  Links? lLinks;

  Trash({
    this.name,
    this.private,
    this.protected,
    this.public,
    this.queryable,
    this.showInList,
    this.slug,
    this.lLinks,
  });

  Trash.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    private = json['private'];
    protected = json['protected'];
    public = json['public'];
    queryable = json['queryable'];
    showInList = json['show_in_list'];
    slug = json['slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['private'] = private;
    data['protected'] = protected;
    data['public'] = public;
    data['queryable'] = queryable;
    data['show_in_list'] = showInList;
    data['slug'] = slug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}
