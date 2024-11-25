import 'package:freshcart_frontend/data/models/category/product.dart';

class GetProductsResponseModel {
  final List<Product>? products;

  GetProductsResponseModel({
    this.products,
  });

  GetProductsResponseModel.fromJson(Map<String, dynamic> json)
      : products = (json['products'] as List?)
            ?.map((dynamic e) => Product.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'products': products?.map((e) => e.toJson()).toList()};
}
