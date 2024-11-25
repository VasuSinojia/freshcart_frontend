class Product {
  final int? id;
  final String? name;
  final int? categoryId;
  final String? imageUrl;
  final int? price;
  final String? description;

  Product({
    this.id,
    this.name,
    this.categoryId,
    this.imageUrl,
    this.price,
    this.description,
  });

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        categoryId = json['category_id'] as int?,
        imageUrl = json['imageUrl'] as String?,
        price = json['price'] as int?,
        description = json['description'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'category_id': categoryId,
        'imageUrl': imageUrl,
        'price': price,
        'description': description
      };
}
