class CartResponseModel {
  final List<CartItem>? cart;

  CartResponseModel({
    this.cart,
  });

  CartResponseModel.fromJson(Map<String, dynamic> json)
      : cart = (json['cart'] as List?)
            ?.map((dynamic e) => CartItem.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'cart': cart?.map((e) => e.toJson()).toList(),
      };
}

class CartItem {
  final int? id;
  final String? userId;
  final int? productId;
  final int? quantity;
  final String? createdAt;
  final String? updatedAt;

  CartItem({
    this.id,
    this.userId,
    this.productId,
    this.quantity,
    this.createdAt,
    this.updatedAt,
  });

  CartItem.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        userId = json['user_id'] as String?,
        productId = json['product_id'] as int?,
        quantity = json['quantity'] as int?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'product_id': productId,
        'quantity': quantity,
        'created_at': createdAt,
        'updated_at': updatedAt
      };
}
