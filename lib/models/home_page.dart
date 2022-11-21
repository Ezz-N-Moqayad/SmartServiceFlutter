// ignore_for_file: void_checks

class HomePage {
  late int categoryId;
  late int parentId;
  late String name;
  late String description;
  late String seoUrl;
  late String image;
  late String originalImage;
  late String delivery;
  late Filters filters;
  List<void>? categories;

  HomePage.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    parentId = json['parent_id'];
    name = json['name'];
    description = json['description'];
    seoUrl = json['seo_url'];
    image = json['image'];
    originalImage = json['original_image'];
    delivery = json['delivery'];
    filters =
        (json['filters'] != null ? Filters.fromJson(json['filters']) : null)!;
    if (json['categories'] != null) {
      categories = <Null>[];
      json['categories'].forEach((v) {
        categories!.add(v);
      });
    }
  }
}

class Filters {
  List<void>? filterGroups;

  Filters({this.filterGroups});

  Filters.fromJson(Map<String, dynamic> json) {
    if (json['filter_groups'] != null) {
      filterGroups = <Null>[];
      json['filter_groups'].forEach((v) {
        filterGroups!.add(v);
      });
    }
  }
}
