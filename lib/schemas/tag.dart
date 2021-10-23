import 'links.dart';

class Tag {
  int? id;
  int? count;
  String? description;
  String? link;
  String? name;
  String? slug;
  String? taxonomy;
  Links? lLinks;

  Tag({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.lLinks,
  });

  Tag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    count = json['count'];
    description = json['description'];
    link = json['link'];
    name = json['name'];
    slug = json['slug'];
    taxonomy = json['taxonomy'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
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
    data['_links'] = lLinks?.toJson();

    return data;
  }
}
