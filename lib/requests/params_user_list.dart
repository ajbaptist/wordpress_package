import '../constants.dart';

/// This class holds all arguments which can be used to filter users when using
/// [WordPress.fetchUsers] method.
///
/// [List Users' Arguments](https://developer.wordpress.org/rest-api/reference/users/#list-users)
class ParamsUserList {
  final WordPressContext context;
  final int pageNum;
  final int perPage;
  final String searchQuery;
  final List<int> includeUserIDs;
  final List<int> excludeUserIDs;
  final int? offset;
  final Order order;
  final UserOrderBy orderBy;
  final String slug;
  final List<String> roles;

  ParamsUserList({
    this.context = WordPressContext.view,
    this.pageNum = 1,
    this.perPage = 10,
    this.searchQuery = '',
    this.includeUserIDs = const [],
    this.excludeUserIDs = const [],
    this.offset,
    this.order = Order.asc,
    this.orderBy = UserOrderBy.name,
    this.slug = '',
    this.roles = const [],
  });

  Map<String, String> toMap() {
    return {
      'context': enumStringToName(context.toString()),
      'page': '$pageNum',
      'per_page': '$perPage',
      'search': searchQuery,
      'include': listToUrlString(includeUserIDs),
      'exclude': listToUrlString(excludeUserIDs),
      'offset': '${offset ?? ''}',
      'order': enumStringToName(order.toString()),
      'orderby': enumStringToName(orderBy.toString()),
      'slug': slug,
      'roles': listToUrlString(roles),
    };
  }

  @override
  String toString() {
    return constructUrlParams(toMap());
  }
}
