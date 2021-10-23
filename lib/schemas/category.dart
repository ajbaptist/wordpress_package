// ignore_for_file: unnecessary_new

import 'links.dart';

class Category {
  int? id;
  int? count;
  String? description;
  String? link;
  String? name;
  String? slug;
  String? taxonomy;
  int? parent;
  Links? lLinks;

  Category({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.parent,
    this.lLinks,
  });

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    description = json['description'];
    link = json['link'];
    name = json['name'];
    slug = json['slug'];
    taxonomy = json['taxonomy'];
    parent = json['parent'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['count'] = count;
    data['description'] = description;
    data['link'] = link;
    data['name'] = name;
    data['slug'] = slug;
    data['taxonomy'] = taxonomy;
    data['parent'] = parent;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}
