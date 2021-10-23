import 'capabilities.dart';
import 'labels.dart';
import 'links.dart';

class Taxonomies {
  TaxonomyCategory? category;
  TaxonomyPostTag? postTag;

  Taxonomies({
    this.category,
    this.postTag,
  });

  Taxonomies.fromJson(Map<String, dynamic> json) {
    category = json['category'] != null
        ? TaxonomyCategory.fromJson(json['category'])
        : null;
    postTag = json['post_tag'] != null
        ? TaxonomyPostTag.fromJson(json['post_tag'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['category'] = category?.toJson();
    data['post_tag'] = postTag?.toJson();

    return data;
  }
}

class TaxonomyCategory {
  String? name;
  String? slug;
  Capabilities? capabilities;
  String? description;
  Labels? labels;
  List<String>? types;
  bool? showCloud;
  bool? hierarchical;
  String? restBase;
  Visibility? visibility;
  Links? lLinks;

  TaxonomyCategory({
    this.name,
    this.slug,
    this.capabilities,
    this.description,
    this.labels,
    this.types,
    this.showCloud,
    this.hierarchical,
    this.restBase,
    this.visibility,
    this.lLinks,
  });

  TaxonomyCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    capabilities = json['capabilities'] != null
        ? Capabilities.fromJson(json['capabilities'])
        : null;
    description = json['description'];
    labels = json['labels'] != null ? Labels.fromJson(json['labels']) : null;
    types = json['types'].cast<String>();
    showCloud = json['show_cloud'];
    hierarchical = json['hierarchical'];
    restBase = json['rest_base'];
    visibility = json['visibility'] != null
        ? Visibility.fromJson(json['visibility'])
        : null;
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['slug'] = slug;
    data['capabilities'] = capabilities?.toJson();
    data['description'] = description;
    data['labels'] = labels?.toJson();
    data['types'] = types;
    data['show_cloud'] = showCloud;
    data['hierarchical'] = hierarchical;
    data['rest_base'] = restBase;
    data['visibility'] = visibility?.toJson();
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Visibility {
  bool? public;
  bool? publiclyQueryable;
  bool? showAdminColumn;
  bool? showInNavMenus;
  bool? showInQuickEdit;
  bool? showUi;

  Visibility({
    this.public,
    this.publiclyQueryable,
    this.showAdminColumn,
    this.showInNavMenus,
    this.showInQuickEdit,
    this.showUi,
  });

  Visibility.fromJson(Map<String, dynamic> json) {
    public = json['public'];
    publiclyQueryable = json['publicly_queryable'];
    showAdminColumn = json['show_admin_column'];
    showInNavMenus = json['show_in_nav_menus'];
    showInQuickEdit = json['show_in_quick_edit'];
    showUi = json['show_ui'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['public'] = public;
    data['publicly_queryable'] = publiclyQueryable;
    data['show_admin_column'] = showAdminColumn;
    data['show_in_nav_menus'] = showInNavMenus;
    data['show_in_quick_edit'] = showInQuickEdit;
    data['show_ui'] = showUi;

    return data;
  }
}

class TaxonomyPostTag {
  String? name;
  String? slug;
  Capabilities? capabilities;
  String? description;
  Labels? labels;
  List<String>? types;
  bool? showCloud;
  bool? hierarchical;
  String? restBase;
  Visibility? visibility;
  Links? lLinks;

  TaxonomyPostTag({
    this.name,
    this.slug,
    this.capabilities,
    this.description,
    this.labels,
    this.types,
    this.showCloud,
    this.hierarchical,
    this.restBase,
    this.visibility,
    this.lLinks,
  });

  TaxonomyPostTag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    capabilities = json['capabilities'] != null
        ? Capabilities.fromJson(json['capabilities'])
        : null;
    description = json['description'];
    labels = json['labels'] != null ? Labels.fromJson(json['labels']) : null;
    types = json['types'].cast<String>();
    showCloud = json['show_cloud'];
    hierarchical = json['hierarchical'];
    restBase = json['rest_base'];
    visibility = json['visibility'] != null
        ? Visibility.fromJson(json['visibility'])
        : null;
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['slug'] = slug;
    data['capabilities'] = capabilities?.toJson();
    data['labels'] = labels?.toJson();
    data['description'] = description;
    data['types'] = types;
    data['show_cloud'] = showCloud;
    data['hierarchical'] = hierarchical;
    data['rest_base'] = restBase;
    data['visibility'] = visibility?.toJson();
    data['_links'] = lLinks?.toJson();

    return data;
  }
}
