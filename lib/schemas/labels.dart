class Labels {
  String? name;
  String? singularName;
  String? searchItems;
  String? popularItems;
  String? allItems;
  String? parentItem;
  String? parentItemColon;
  String? addNew;
  String? addNewItem;
  String? editItem;
  String? newItem;
  String? viewItem;
  String? viewItems;
  String? notFound;
  String? notFoundInTrash;
  String? archives;
  String? attributes;
  String? insertIntoItem;
  String? uploadedToThisItem;
  String? featuredImage;
  String? setFeaturedImage;
  String? removeFeaturedImage;
  String? useFeaturedImage;
  String? filterItemsList;
  String? itemsListNavigation;
  String? itemsList;
  String? itemPublished;
  String? itemPublishedPrivately;
  String? itemRevertedToDraft;
  String? itemScheduled;
  String? itemUpdated;
  String? menuName;
  String? nameAdminBar;
  String? updateItem;
  String? newItemName;
  String? separateItemsWithCommas;
  String? addOrRemoveItems;
  String? chooseFromMostUsed;
  String? noTerms;
  String? mostUsed;
  String? backToItems;

  Labels({
    this.name,
    this.singularName,
    this.searchItems,
    this.popularItems,
    this.allItems,
    this.parentItem,
    this.parentItemColon,
    this.addNew,
    this.addNewItem,
    this.editItem,
    this.newItem,
    this.viewItem,
    this.viewItems,
    this.notFound,
    this.notFoundInTrash,
    this.archives,
    this.attributes,
    this.insertIntoItem,
    this.uploadedToThisItem,
    this.featuredImage,
    this.setFeaturedImage,
    this.removeFeaturedImage,
    this.useFeaturedImage,
    this.filterItemsList,
    this.itemsListNavigation,
    this.itemsList,
    this.itemPublished,
    this.itemPublishedPrivately,
    this.itemRevertedToDraft,
    this.itemScheduled,
    this.itemUpdated,
    this.menuName,
    this.nameAdminBar,
    this.updateItem,
    this.newItemName,
    this.separateItemsWithCommas,
    this.addOrRemoveItems,
    this.chooseFromMostUsed,
    this.noTerms,
    this.mostUsed,
    this.backToItems,
  });

  Labels.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    singularName = json['singular_name'];
    searchItems = json['search_items'];
    popularItems = json['popular_items'];
    allItems = json['all_items'];
    parentItem = json['parent_item'];
    parentItemColon = json['parent_item_colon'];
    addNew = json['add_new'];
    addNewItem = json['add_new_item'];
    editItem = json['edit_item'];
    newItem = json['new_item'];
    viewItem = json['view_item'];
    viewItems = json['view_items'];
    notFound = json['not_found'];
    notFoundInTrash = json['not_found_in_trash'];
    archives = json['archives'];
    attributes = json['attributes'];
    insertIntoItem = json['insert_into_item'];
    uploadedToThisItem = json['uploaded_to_this_item'];
    featuredImage = json['featured_image'];
    setFeaturedImage = json['set_featured_image'];
    removeFeaturedImage = json['remove_featured_image'];
    useFeaturedImage = json['use_featured_image'];
    filterItemsList = json['filter_items_list'];
    itemsListNavigation = json['items_list_navigation'];
    itemsList = json['items_list'];
    itemPublished = json['item_published'];
    itemPublishedPrivately = json['item_published_privately'];
    itemRevertedToDraft = json['item_reverted_to_draft'];
    itemScheduled = json['item_scheduled'];
    itemUpdated = json['item_updated'];
    menuName = json['menu_name'];
    nameAdminBar = json['name_admin_bar'];
    updateItem = json['update_item'];
    newItemName = json['new_item_name'];
    separateItemsWithCommas = json['separate_items_with_commas'];
    addOrRemoveItems = json['add_or_remove_items'];
    chooseFromMostUsed = json['choose_from_most_used'];
    noTerms = json['no_terms'];
    mostUsed = json['most_used'];
    backToItems = json['back_to_items'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['name'] = name;
    data['singular_name'] = singularName;
    data['search_items'] = searchItems;
    data['popular_items'] = popularItems;
    data['all_items'] = allItems;
    data['parent_item'] = parentItem;
    data['parent_item_colon'] = parentItemColon;
    data['add_new'] = addNew;
    data['add_new_item'] = addNewItem;
    data['edit_item'] = editItem;
    data['new_item'] = newItem;
    data['view_item'] = viewItem;
    data['view_items'] = viewItems;
    data['not_found'] = notFound;
    data['not_found_in_trash'] = notFoundInTrash;
    data['archives'] = archives;
    data['attributes'] = attributes;
    data['insert_into_item'] = insertIntoItem;
    data['uploaded_to_this_item'] = uploadedToThisItem;
    data['featured_image'] = featuredImage;
    data['set_featured_image'] = setFeaturedImage;
    data['remove_featured_image'] = removeFeaturedImage;
    data['use_featured_image'] = useFeaturedImage;
    data['filter_items_list'] = filterItemsList;
    data['items_list_navigation'] = itemsListNavigation;
    data['items_list'] = itemsList;
    data['item_published'] = itemPublished;
    data['item_published_privately'] = itemPublishedPrivately;
    data['item_reverted_to_draft'] = itemRevertedToDraft;
    data['item_scheduled'] = itemScheduled;
    data['item_updated'] = itemUpdated;
    data['menu_name'] = menuName;
    data['name_admin_bar'] = nameAdminBar;
    data['update_item'] = updateItem;
    data['new_item_name'] = newItemName;
    data['separate_items_with_commas'] = separateItemsWithCommas;
    data['add_or_remove_items'] = addOrRemoveItems;
    data['choose_from_most_used'] = chooseFromMostUsed;
    data['no_terms'] = noTerms;
    data['most_used'] = mostUsed;
    data['back_to_items'] = backToItems;

    return data;
  }
}
