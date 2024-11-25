import 'package:freshcart_frontend/core/resources/data_state.dart';

import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/data/models/category/products_response_model.dart';

abstract class CategoryRepository {
  Future<DataState<CategoryResponseModel>> getCategories();

  Future<DataState<GetProductsResponseModel>> getProductsByCategoryId({
    required String categoryId,
  });
}
