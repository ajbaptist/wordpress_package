import '../constants.dart';

import 'category.dart';
import 'comment.dart';
import 'comment_hierarchy.dart';
import 'content.dart';
import 'excerpt.dart';
import 'guid.dart';
import 'links.dart';
import 'media.dart';
import 'tag.dart';
import 'title.dart';
import 'user.dart';

/// A [WordPress Post](https://developer.wordpress.org/rest-api/reference/posts/)
///
/// Refer the above link to see which arguments are set based on different context modes.
/// ([WordPressContext]).
class Post {
  /// ID of the post
  int? id;

  /// The date the post was published, in the site's Timezone.
  String? date;

  /// The date the post was published, in GMT.
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;

  /// Password for the post in case it needs to be password protected.
  String? password;

  /// An alphanumeric identifier unique to each post.
  String? slug;

  /// The state in which the post should be created (draft, publish etc.)
  PostPageStatus? status;
  String? type;
  String? link;

  /// Post title
  Title? title;

  /// Post content
  Content? content;

  /// Post excerpt
  Excerpt? excerpt;

  /// ID of the post author. Refer [User].
  int? authorID;

  int? featuredMediaID;

  /// Whether the post allows commenting.
  PostCommentStatus? commentStatus;

  /// Whether the post can be pinged.
  PostPingStatus? pingStatus;

  /// Whether the post needs to sticky i.e. a Featured post.
  bool? sticky;
  String? template;

  /// The format of the post.
  PostFormat? format;

  /// List of IDs of categories this post belongs to.
  List<int>? categoryIDs;

  /// List of IDs of tags this post should have.
  List<int>? tagIDs;
  String? permalinkTemplate;
  String? generatedSlug;
  Links? lLinks;

  /// The [User] object denoting the author of the post.
  User? author;

  /// A list of comments for the post.
  List<Comment>? comments;

  /// A list of comments for the post, where each
  /// [CommentHierarchy] object is a direct comment to the post, with
  /// [CommentHierarchy.children] containing replies to that comment.
  List<CommentHierarchy>? commentsHierarchy;

  /// A list of categories assigned to the post.
  List<Category>? categories;

  /// A list of tags assigned to the post.
  List<Tag>? tags;

  /// A list of attachments contained in the post.
  List<Media>? attachments;

  /// The featured Media of the post.
  Media? featuredMedia;

  Post({
    this.date,
    this.dateGmt,
    this.password,
    this.slug,
    this.status = PostPageStatus.publish,
    required String title,
    required String content,
    required String excerpt,
    required this.authorID,
    String? featuredMedia,
    this.featuredMediaID,
    this.commentStatus = PostCommentStatus.open,
    this.pingStatus = PostPingStatus.open,
    this.sticky,
    this.template,
    this.format = PostFormat.standard,
    this.categoryIDs,
    this.tagIDs,
  })  : title = Title(rendered: title),
        featuredMedia = Media(sourceUrl: featuredMedia),
        content = Content(rendered: content),
        excerpt = Excerpt(rendered: excerpt);

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    password = json['password'];
    slug = json['slug'];
    if (json['status'] != null) {
      for (var val in PostPageStatus.values) {
        if (enumStringToName(val.toString()) == json['status']) {
          status = val;
          return;
        }
      }
    }
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    content =
        json['content'] != null ? Content.fromJson(json['content']) : null;
    excerpt =
        json['excerpt'] != null ? Excerpt.fromJson(json['excerpt']) : null;
    authorID = json['author'];
    featuredMediaID = json['featured_media'];
    if (json['comment_status'] != null) {
      for (var val in PostCommentStatus.values) {
        if (enumStringToName(val.toString()) == json['comment_status']) {
          commentStatus = val;
          return;
        }
      }
    }
    if (json['ping_status'] != null) {
      for (var val in PostPingStatus.values) {
        if (enumStringToName(val.toString()) == json['ping_status']) {
          pingStatus = val;
          return;
        }
      }
    }
    sticky = json['sticky'];
    template = json['template'];
    if (json['format'] != null) {
      for (var val in PostFormat.values) {
        if (enumStringToName(val.toString()) == json['format']) {
          format = val;
          return;
        }
      }
    }
    categoryIDs =
        // ignore: prefer_null_aware_operators
        json['categories'] != null ? json['categories'].cast<int>() : null;
    if (json['tags'] != null) {
      tagIDs = json['tags'].cast<int>();
    } else {
      tagIDs = null;
    }
    permalinkTemplate = json['permalink_template'];
    generatedSlug = json['generated_slug'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    // ignore: omit_local_variable_types
    final Map<String, dynamic> data = <String, dynamic>{};

    data['date'] = date;
    data['date_gmt'] = dateGmt;
    data['password'] = password;
    data['slug'] = slug;
    data['status'] = enumStringToName(status.toString());
    data['title'] = title?.toJson();
    data['content'] = content?.toJson();
    data['excerpt'] = excerpt?.toJson();
    data['author'] = authorID;
    data['featured_media'] = featuredMediaID;
    data['comment_status'] = enumStringToName(commentStatus.toString());
    data['ping_status'] = enumStringToName(pingStatus.toString());
    data['sticky'] = sticky;
    data['template'] = template;
    data['format'] = enumStringToName(format.toString());
    data['categories'] = listToUrlString(categoryIDs ?? []);
    data['tags'] = listToUrlString(tagIDs ?? []);

    return data;
  }

  @override
  String toString() {
    return 'Post: { id: $id, title: ${title?.rendered}, '
        'author: {id: $authorID, name: ${author?.name}}}';
  }
}
