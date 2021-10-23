import 'user.dart';

class FetchUsersResult {
  List<User> users = const [];
  int? totalUsers;

  FetchUsersResult(List<User> users, int totalUsers) {
    // ignore: prefer_initializing_formals
    this.users = users;
    // ignore: prefer_initializing_formals
    this.totalUsers = totalUsers;
  }
}
