import 'content.dart';
import 'excerpt.dart';
import 'guid.dart';
import 'links.dart';
import 'title.dart';

class Page {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? password;
  String? slug;
  String? status;
  String? type;
  String? link;
  Title? title;
  Content? content;
  Excerpt? excerpt;
  int? author;
  int? featuredMedia;
  int? parent;
  int? menuOrder;
  String? commentStatus;
  String? pingStatus;
  String? template;
  String? permalinkTemplate;
  String? generatedSlug;
  Links? lLinks;

  Page({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.password,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.parent,
    this.menuOrder,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.permalinkTemplate,
    this.generatedSlug,
    this.lLinks,
  });

  Page.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    password = json['password'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    content =
        json['content'] != null ? Content.fromJson(json['content']) : null;
    excerpt =
        json['excerpt'] != null ? Excerpt.fromJson(json['excerpt']) : null;
    author = json['author'];
    featuredMedia = json['featured_media'];
    parent = json['parent'];
    menuOrder = json['menu_order'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    template = json['template'];
    permalinkTemplate = json['permalink_template'];
    generatedSlug = json['generated_slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['date'] = date;
    data['date_gmt'] = dateGmt;
    data['guid'] = guid?.toJson();
    data['modified'] = modified;
    data['modified_gmt'] = modifiedGmt;
    data['password'] = password;
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['link'] = link;
    data['title'] = title?.toJson();
    data['content'] = content?.toJson();
    data['excerpt'] = excerpt?.toJson();
    data['author'] = author;
    data['featured_media'] = featuredMedia;
    data['parent'] = parent;
    data['menu_order'] = menuOrder;
    data['comment_status'] = commentStatus;
    data['ping_status'] = pingStatus;
    data['template'] = template;
    data['permalink_template'] = permalinkTemplate;
    data['generated_slug'] = generatedSlug;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}
