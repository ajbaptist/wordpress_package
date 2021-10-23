import '../constants.dart';

/// This class holds all arguments which can be used to filter comments when using
/// [WordPress.fetchComments] method.
///
/// [List Comments' Arguments](https://developer.wordpress.org/rest-api/reference/comments/#list-comments)
class ParamsCommentList {
  final WordPressContext context;
  final int pageNum;
  final int perPage;
  final String searchQuery;
  final String afterDate;
  final List<int> includeAuthorIDs;
  final List<int> excludeAuthorIDs;
  final String authorEmail;
  final String beforeDate;
  final List<int> excludeCommentIDs;
  final List<int> includeCommentIDs;
  final int? offset;
  final Order order;
  final CommentOrderBy orderBy;
  final List<int> includeParentIDs;
  final List<int> excludeParentIDs;
  final List<int> includePostIDs;
  final CommentStatus commentStatus;
  final CommentType commentType;
  final String postPassword;

  ParamsCommentList({
    this.context = WordPressContext.view,
    this.pageNum = 1,
    this.perPage = 10,
    this.searchQuery = '',
    this.afterDate = '',
    this.includeAuthorIDs = const [],
    this.excludeAuthorIDs = const [],
    this.authorEmail = '',
    this.beforeDate = '',
    this.excludeCommentIDs = const [],
    this.includeCommentIDs = const [],
    this.offset,
    this.order = Order.desc,
    this.orderBy = CommentOrderBy.date_gmt,
    this.includeParentIDs = const [],
    this.excludeParentIDs = const [],
    this.includePostIDs = const [],
    this.commentStatus = CommentStatus.approve,
    this.commentType = CommentType.comment,
    this.postPassword = '',
  });

  Map<String, String> toMap() {
    return {
      'context': enumStringToName(context.toString()),
      'page': '$pageNum',
      'per_page': '$perPage',
      'search': searchQuery,
      'after': afterDate,
      'author': listToUrlString(includeAuthorIDs),
      'author_exclude': listToUrlString(excludeAuthorIDs),
      'author_email': authorEmail,
      'before': beforeDate,
      'exclude': listToUrlString(excludeCommentIDs),
      'include': listToUrlString(includeCommentIDs),
      'offset': '${offset ?? ''}',
      'order': enumStringToName(order.toString()),
      'orderby': enumStringToName(orderBy.toString()),
      'parent': listToUrlString(includeParentIDs),
      'parent_exclude': listToUrlString(excludeParentIDs),
      'post': listToUrlString(includePostIDs),
      'status': enumStringToName(commentStatus.toString()),
      'type': enumStringToName(commentType.toString()),
      'password': postPassword,
    };
  }

  @override
  String toString() {
    return constructUrlParams(toMap());
  }
}
