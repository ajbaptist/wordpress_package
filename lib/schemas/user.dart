import 'avatar_urls.dart';
import 'links.dart';

class User {
  int? id;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? email;
  String? url;
  String? description;
  String? link;
  String? locale;
  String? nickname;
  String? slug;
  List<String>? roles;
  String? registeredDate;
  UserCapabilities? capabilities;
  UserExtraCapabilities? extraCapabilities;
  AvatarUrls? avatarUrls;
  Map<String, dynamic>? meta;
  Links? lLinks;
//  yahya - @mymakarim
  String? password;
//  end yahya - @mymakarim

  User({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.url,
    this.description,
    this.link,
    this.locale,
    this.nickname,
    this.slug,
    this.roles,
    this.registeredDate,
    this.capabilities,
    this.extraCapabilities,
    this.avatarUrls,
    this.meta,
    this.lLinks,
    this.password,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    url = json['url'];
    description = json['description'];
    link = json['link'];
    locale = json['locale'];
    nickname = json['nickname'];
    slug = json['slug'];
    if (json['roles'] != null) roles = json['roles'].cast<String>();
    registeredDate = json['registered_date'];
    if (json['capabilities'] != null) {
      capabilities = UserCapabilities.fromJson(json['capabilities']);
    } else {
      capabilities = null;
    }
    extraCapabilities = json['extra_capabilities'] != null
        ? UserExtraCapabilities.fromJson(json['extra_capabilities'])
        : null;
    avatarUrls = json['avatar_urls'] != null
        ? AvatarUrls.fromJson(json['avatar_urls'])
        : null;

    if (json['meta'] != null && json['meta'].length > 0) {
      meta = <String, dynamic>{};
      json['meta'].forEach((k, v) {
        meta![k] = v;
      });
    }
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['url'] = url;
    data['description'] = description;
    data['link'] = link;
    data['locale'] = locale;
    data['nickname'] = nickname;
    data['slug'] = slug;
    data['roles'] = roles;
    data['registered_date'] = registeredDate;
    data['capabilities'] = capabilities?.toJson();
    data['extra_capabilities'] = extraCapabilities?.toJson();
    data['avatar_urls'] = avatarUrls?.toJson();
    data['meta'] = meta;
    data['_links'] = lLinks?.toJson();
    data['password'] = password;

    return data;
  }

  @override
  String toString() {
    return 'id: $id, name: $name';
  }
}

class UserCapabilities {
  bool? switchThemes;
  bool? editThemes;
  bool? activatePlugins;
  bool? editPlugins;
  bool? editUsers;
  bool? editFiles;
  bool? manageOptions;
  bool? moderateComments;
  bool? manageCategories;
  bool? manageLinks;
  bool? uploadFiles;
  bool? import;
  bool? unfilteredHtml;
  bool? editPosts;
  bool? editOthersPosts;
  bool? editPublishedPosts;
  bool? publishPosts;
  bool? editPages;
  bool? read;
  bool? level10;
  bool? level9;
  bool? level8;
  bool? level7;
  bool? level6;
  bool? level5;
  bool? level4;
  bool? level3;
  bool? level2;
  bool? level1;
  bool? level0;
  bool? editOthersPages;
  bool? editPublishedPages;
  bool? publishPages;
  bool? deletePages;
  bool? deleteOthersPages;
  bool? deletePublishedPages;
  bool? deletePosts;
  bool? deleteOthersPosts;
  bool? deletePublishedPosts;
  bool? deletePrivatePosts;
  bool? editPrivatePosts;
  bool? readPrivatePosts;
  bool? deletePrivatePages;
  bool? editPrivatePages;
  bool? readPrivatePages;
  bool? deleteUsers;
  bool? createUsers;
  bool? unfilteredUpload;
  bool? editDashboard;
  bool? updatePlugins;
  bool? deletePlugins;
  bool? installPlugins;
  bool? updateThemes;
  bool? installThemes;
  bool? updateCore;
  bool? listUsers;
  bool? removeUsers;
  bool? promoteUsers;
  bool? editThemeOptions;
  bool? deleteThemes;
  bool? export;
  bool? administrator;

  UserCapabilities({
    this.switchThemes,
    this.editThemes,
    this.activatePlugins,
    this.editPlugins,
    this.editUsers,
    this.editFiles,
    this.manageOptions,
    this.moderateComments,
    this.manageCategories,
    this.manageLinks,
    this.uploadFiles,
    this.import,
    this.unfilteredHtml,
    this.editPosts,
    this.editOthersPosts,
    this.editPublishedPosts,
    this.publishPosts,
    this.editPages,
    this.read,
    this.level10,
    this.level9,
    this.level8,
    this.level7,
    this.level6,
    this.level5,
    this.level4,
    this.level3,
    this.level2,
    this.level1,
    this.level0,
    this.editOthersPages,
    this.editPublishedPages,
    this.publishPages,
    this.deletePages,
    this.deleteOthersPages,
    this.deletePublishedPages,
    this.deletePosts,
    this.deleteOthersPosts,
    this.deletePublishedPosts,
    this.deletePrivatePosts,
    this.editPrivatePosts,
    this.readPrivatePosts,
    this.deletePrivatePages,
    this.editPrivatePages,
    this.readPrivatePages,
    this.deleteUsers,
    this.createUsers,
    this.unfilteredUpload,
    this.editDashboard,
    this.updatePlugins,
    this.deletePlugins,
    this.installPlugins,
    this.updateThemes,
    this.installThemes,
    this.updateCore,
    this.listUsers,
    this.removeUsers,
    this.promoteUsers,
    this.editThemeOptions,
    this.deleteThemes,
    this.export,
    this.administrator,
  });

  UserCapabilities.fromJson(Map<String, dynamic> json) {
    switchThemes = json['switch_themes'];
    editThemes = json['edit_themes'];
    activatePlugins = json['activate_plugins'];
    editPlugins = json['edit_plugins'];
    editUsers = json['edit_users'];
    editFiles = json['edit_files'];
    manageOptions = json['manage_options'];
    moderateComments = json['moderate_comments'];
    manageCategories = json['manage_categories'];
    manageLinks = json['manage_links'];
    uploadFiles = json['upload_files'];
    import = json['import'];
    unfilteredHtml = json['unfiltered_html'];
    editPosts = json['edit_posts'];
    editOthersPosts = json['edit_others_posts'];
    editPublishedPosts = json['edit_published_posts'];
    publishPosts = json['publish_posts'];
    editPages = json['edit_pages'];
    read = json['read'];
    level10 = json['level_10'];
    level9 = json['level_9'];
    level8 = json['level_8'];
    level7 = json['level_7'];
    level6 = json['level_6'];
    level5 = json['level_5'];
    level4 = json['level_4'];
    level3 = json['level_3'];
    level2 = json['level_2'];
    level1 = json['level_1'];
    level0 = json['level_0'];
    editOthersPages = json['edit_others_pages'];
    editPublishedPages = json['edit_published_pages'];
    publishPages = json['publish_pages'];
    deletePages = json['delete_pages'];
    deleteOthersPages = json['delete_others_pages'];
    deletePublishedPages = json['delete_published_pages'];
    deletePosts = json['delete_posts'];
    deleteOthersPosts = json['delete_others_posts'];
    deletePublishedPosts = json['delete_published_posts'];
    deletePrivatePosts = json['delete_private_posts'];
    editPrivatePosts = json['edit_private_posts'];
    readPrivatePosts = json['read_private_posts'];
    deletePrivatePages = json['delete_private_pages'];
    editPrivatePages = json['edit_private_pages'];
    readPrivatePages = json['read_private_pages'];
    deleteUsers = json['delete_users'];
    createUsers = json['create_users'];
    unfilteredUpload = json['unfiltered_upload'];
    editDashboard = json['edit_dashboard'];
    updatePlugins = json['update_plugins'];
    deletePlugins = json['delete_plugins'];
    installPlugins = json['install_plugins'];
    updateThemes = json['update_themes'];
    installThemes = json['install_themes'];
    updateCore = json['update_core'];
    listUsers = json['list_users'];
    removeUsers = json['remove_users'];
    promoteUsers = json['promote_users'];
    editThemeOptions = json['edit_theme_options'];
    deleteThemes = json['delete_themes'];
    export = json['export'];
    administrator = json['administrator'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['switch_themes'] = switchThemes;
    data['edit_themes'] = editThemes;
    data['activate_plugins'] = activatePlugins;
    data['edit_plugins'] = editPlugins;
    data['edit_users'] = editUsers;
    data['edit_files'] = editFiles;
    data['manage_options'] = manageOptions;
    data['moderate_comments'] = moderateComments;
    data['manage_categories'] = manageCategories;
    data['manage_links'] = manageLinks;
    data['upload_files'] = uploadFiles;
    data['import'] = import;
    data['unfiltered_html'] = unfilteredHtml;
    data['edit_posts'] = editPosts;
    data['edit_others_posts'] = editOthersPosts;
    data['edit_published_posts'] = editPublishedPosts;
    data['publish_posts'] = publishPosts;
    data['edit_pages'] = editPages;
    data['read'] = read;
    data['level_10'] = level10;
    data['level_9'] = level9;
    data['level_8'] = level8;
    data['level_7'] = level7;
    data['level_6'] = level6;
    data['level_5'] = level5;
    data['level_4'] = level4;
    data['level_3'] = level3;
    data['level_2'] = level2;
    data['level_1'] = level1;
    data['level_0'] = level0;
    data['edit_others_pages'] = editOthersPages;
    data['edit_published_pages'] = editPublishedPages;
    data['publish_pages'] = publishPages;
    data['delete_pages'] = deletePages;
    data['delete_others_pages'] = deleteOthersPages;
    data['delete_published_pages'] = deletePublishedPages;
    data['delete_posts'] = deletePosts;
    data['delete_others_posts'] = deleteOthersPosts;
    data['delete_published_posts'] = deletePublishedPosts;
    data['delete_private_posts'] = deletePrivatePosts;
    data['edit_private_posts'] = editPrivatePosts;
    data['read_private_posts'] = readPrivatePosts;
    data['delete_private_pages'] = deletePrivatePages;
    data['edit_private_pages'] = editPrivatePages;
    data['read_private_pages'] = readPrivatePages;
    data['delete_users'] = deleteUsers;
    data['create_users'] = createUsers;
    data['unfiltered_upload'] = unfilteredUpload;
    data['edit_dashboard'] = editDashboard;
    data['update_plugins'] = updatePlugins;
    data['delete_plugins'] = deletePlugins;
    data['install_plugins'] = installPlugins;
    data['update_themes'] = updateThemes;
    data['install_themes'] = installThemes;
    data['update_core'] = updateCore;
    data['list_users'] = listUsers;
    data['remove_users'] = removeUsers;
    data['promote_users'] = promoteUsers;
    data['edit_theme_options'] = editThemeOptions;
    data['delete_themes'] = deleteThemes;
    data['export'] = export;
    data['administrator'] = administrator;

    return data;
  }
}

class UserExtraCapabilities {
  bool? administrator;

  UserExtraCapabilities({this.administrator});

  UserExtraCapabilities.fromJson(Map<String, dynamic> json) {
    administrator = json['administrator'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['administrator'] = administrator;

    return data;
  }
}
