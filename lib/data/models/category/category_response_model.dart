class CategoryResponseModel {
  final List<Categories>? categories;

  CategoryResponseModel({
    this.categories,
  });

  CategoryResponseModel.fromJson(Map<String, dynamic> json)
      : categories = (json['categories'] as List?)
            ?.map((dynamic e) => Categories.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'categories': categories?.map((e) => e.toJson()).toList()};
}

class Categories {
  final int? id;
  final String? name;
  final String? imageUrl;
  final String? colorCode;

  Categories({
    this.id,
    this.name,
    this.imageUrl,
    this.colorCode,
  });

  Categories.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        imageUrl = json['imageUrl'] as String?,
        colorCode = json['color_code'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'imageUrl': imageUrl,
        'color_code': colorCode,
      };
}
