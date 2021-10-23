import 'guid.dart';
import 'links.dart';
import 'title.dart';

class Media {
  int? id;
  String? date;
  String? dateGmt;
  Guid? guid;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Title? title;
  int? author;
  String? commentStatus;
  String? pingStatus;
  String? template;
  String? permalinkTemplate;
  String? generatedSlug;
  Description? description;
  Caption? caption;
  String? altText;
  String? mediaType;
  String? mimeType;
  MediaDetails? mediaDetails;
  int? post;
  String? sourceUrl;
  Links? lLinks;

  Media({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.author,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.permalinkTemplate,
    this.generatedSlug,
    this.description,
    this.caption,
    this.altText,
    this.mediaType,
    this.mimeType,
    this.mediaDetails,
    this.post,
    this.sourceUrl,
    this.lLinks,
  });

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    author = json['author'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    template = json['template'];
    permalinkTemplate = json['permalink_template'];
    generatedSlug = json['generated_slug'];
    description = json['description'] != null
        ? Description.fromJson(json['description'])
        : null;
    caption =
        json['caption'] != null ? Caption.fromJson(json['caption']) : null;
    altText = json['alt_text'];
    mediaType = json['media_type'];
    mimeType = json['mime_type'];
    mediaDetails = json['media_details'] != null
        ? MediaDetails.fromJson(json['media_details'])
        : null;
    post = json['post'];
    sourceUrl = json['source_url'];
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
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['link'] = link;
    data['title'] = title?.toJson();
    data['author'] = author;
    data['comment_status'] = commentStatus;
    data['ping_status'] = pingStatus;
    data['template'] = template;
    data['permalink_template'] = permalinkTemplate;
    data['generated_slug'] = generatedSlug;
    data['description'] = description?.toJson();
    data['caption'] = caption?.toJson();
    data['alt_text'] = altText;
    data['media_type'] = mediaType;
    data['mime_type'] = mimeType;
    data['media_details'] = mediaDetails?.toJson();
    data['post'] = post;
    data['source_url'] = sourceUrl;
    data['_links'] = lLinks?.toJson();

    return data;
  }
}

class Description {
  String? raw;
  String? rendered;

  Description({
    this.raw,
    this.rendered,
  });

  Description.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['raw'] = raw;
    data['rendered'] = rendered;

    return data;
  }
}

class Caption {
  String? raw;
  String? rendered;

  Caption({
    this.raw,
    this.rendered,
  });

  Caption.fromJson(Map<String, dynamic> json) {
    raw = json['raw'];
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['raw'] = raw;
    data['rendered'] = rendered;

    return data;
  }
}

class MediaDetails {
  int? width;
  int? height;
  String? file;
  Sizes? sizes;
  ImageMeta? imageMeta;

  MediaDetails({
    this.width,
    this.height,
    this.file,
    this.sizes,
    this.imageMeta,
  });

  MediaDetails.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    file = json['file'];
    sizes = json['sizes'] != null ? Sizes.fromJson(json['sizes']) : null;
    imageMeta = json['image_meta'] != null
        ? ImageMeta.fromJson(json['image_meta'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['width'] = width;
    data['height'] = height;
    data['file'] = file;
    data['sizes'] = sizes?.toJson();
    data['image_meta'] = imageMeta?.toJson();

    return data;
  }
}

class Sizes {
  Thumbnail? thumbnail;
  Medium? medium;
  MediumLarge? mediumLarge;
  Large? large;
  PostThumbnail? postThumbnail;
  Full? full;

  Sizes({
    this.thumbnail,
    this.medium,
    this.mediumLarge,
    this.postThumbnail,
    this.large,
    this.full,
  });

  Sizes.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null
        ? Thumbnail.fromJson(json['thumbnail'])
        : null;
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    mediumLarge = json['medium_large'] != null
        ? MediumLarge.fromJson(json['medium_large'])
        : null;
    large = json['large'] != null ? Large.fromJson(json['large']) : null;
    postThumbnail = json['post-thumbnail'] != null
        ? PostThumbnail.fromJson(json['post-thumbnail'])
        : null;
    full = json['full'] != null ? Full.fromJson(json['full']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['thumbnail'] = thumbnail?.toJson();
    data['medium'] = medium?.toJson();
    data['medium_large'] = mediumLarge?.toJson();
    data['large'] = large?.toJson();
    data['post-thumbnail'] = postThumbnail?.toJson();
    data['full'] = full?.toJson();

    return data;
  }
}

class Thumbnail {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  Thumbnail({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  Thumbnail.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class Medium {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  Medium({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  Medium.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class MediumLarge {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  MediumLarge({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  MediumLarge.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class Large {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  Large({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  Large.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class PostThumbnail {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  PostThumbnail({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  PostThumbnail.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class Full {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  String? sourceUrl;

  Full({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.sourceUrl,
  });

  Full.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime_type'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime_type'] = mimeType;
    data['source_url'] = sourceUrl;

    return data;
  }
}

class ImageMeta {
  String? aperture;
  String? credit;
  String? camera;
  String? caption;
  String? createdTimestamp;
  String? copyright;
  String? focalLength;
  String? iso;
  String? shutterSpeed;
  String? title;
  String? orientation;

  ImageMeta({
    this.aperture,
    this.credit,
    this.camera,
    this.caption,
    this.createdTimestamp,
    this.copyright,
    this.focalLength,
    this.iso,
    this.shutterSpeed,
    this.title,
    this.orientation,
  });

  ImageMeta.fromJson(Map<String, dynamic> json) {
    aperture = json['aperture'];
    credit = json['credit'];
    camera = json['camera'];
    caption = json['caption'];
    createdTimestamp = json['created_timestamp'];
    copyright = json['copyright'];
    focalLength = json['focal_length'];
    iso = json['iso'];
    shutterSpeed = json['shutter_speed'];
    title = json['title'];
    orientation = json['orientation'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['aperture'] = aperture;
    data['credit'] = credit;
    data['camera'] = camera;
    data['caption'] = caption;
    data['created_timestamp'] = createdTimestamp;
    data['copyright'] = copyright;
    data['focal_length'] = focalLength;
    data['iso'] = iso;
    data['shutter_speed'] = shutterSpeed;
    data['title'] = title;
    data['orientation'] = orientation;

    return data;
  }
}
