import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/data/models/login_model.dart';

abstract class CategoryRepository {
  Future<DataState<CategoryResponseModel>> getCategories();
}
