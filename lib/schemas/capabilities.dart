class Capabilities {
  String? manageTerms;
  String? editTerms;
  String? deleteTerms;
  String? assignTerms;
  String? editPost;
  String? readPost;
  String? deletePost;
  String? editPosts;
  String? editOthersPosts;
  String? publishPosts;
  String? readPrivatePosts;
  String? read;
  String? deletePosts;
  String? deletePrivatePosts;
  String? deletePublishedPosts;
  String? deleteOthersPosts;
  String? editPrivatePosts;
  String? editPublishedPosts;
  String? createPosts;

  Capabilities({
    this.manageTerms,
    this.editTerms,
    this.deleteTerms,
    this.assignTerms,
    this.editPost,
    this.readPost,
    this.deletePost,
    this.editPosts,
    this.editOthersPosts,
    this.publishPosts,
    this.readPrivatePosts,
    this.read,
    this.deletePosts,
    this.deletePrivatePosts,
    this.deletePublishedPosts,
    this.deleteOthersPosts,
    this.editPrivatePosts,
    this.editPublishedPosts,
    this.createPosts,
  });

  Capabilities.fromJson(Map<String, dynamic> json) {
    manageTerms = json['manage_terms'];
    editTerms = json['edit_terms'];
    deleteTerms = json['delete_terms'];
    assignTerms = json['assign_terms'];
    editPost = json['edit_post'];
    readPost = json['read_post'];
    deletePost = json['delete_post'];
    editPosts = json['edit_posts'];
    editOthersPosts = json['edit_others_posts'];
    publishPosts = json['publish_posts'];
    readPrivatePosts = json['read_private_posts'];
    read = json['read'];
    deletePosts = json['delete_posts'];
    deletePrivatePosts = json['delete_private_posts'];
    deletePublishedPosts = json['delete_published_posts'];
    deleteOthersPosts = json['delete_others_posts'];
    editPrivatePosts = json['edit_private_posts'];
    editPublishedPosts = json['edit_published_posts'];
    createPosts = json['create_posts'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['manage_terms'] = manageTerms;
    data['edit_terms'] = editTerms;
    data['delete_terms'] = deleteTerms;
    data['assign_terms'] = assignTerms;
    data['edit_post'] = editPost;
    data['read_post'] = readPost;
    data['delete_post'] = deletePost;
    data['edit_posts'] = editPosts;
    data['edit_others_posts'] = editOthersPosts;
    data['publish_posts'] = publishPosts;
    data['read_private_posts'] = readPrivatePosts;
    data['read'] = read;
    data['delete_posts'] = deletePosts;
    data['delete_private_posts'] = deletePrivatePosts;
    data['delete_published_posts'] = deletePublishedPosts;
    data['delete_others_posts'] = deleteOthersPosts;
    data['edit_private_posts'] = editPrivatePosts;
    data['edit_published_posts'] = editPublishedPosts;
    data['create_posts'] = createPosts;

    return data;
  }
}
