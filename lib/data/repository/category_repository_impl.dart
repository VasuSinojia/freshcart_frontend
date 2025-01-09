import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/data_sources/remote/categories/category_api_service.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/data/models/category/products_response_model.dart';
import 'package:freshcart_frontend/domain/repository/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryApiService _categoryApiService;

  CategoryRepositoryImpl(this._categoryApiService);

  @override
  Future<DataState<CategoryResponseModel>> getCategories() async {
    try {
      final response = await _categoryApiService.getCategories();

      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        return DataFailed(DioException(
            error: response.response.statusCode,
            message: response.response.statusMessage,
            response: response.response,
            requestOptions: response.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<GetProductsResponseModel>> getProductsByCategoryId(
      {required String categoryId}) async {
    try {
      final response = await _categoryApiService.getProductsByCategoryId(
        categoryId: categoryId,
      );

      if (response.response.statusCode == 200) {
        return DataSuccess(response.data);
      } else {
        return DataFailed(DioException(
            error: response.response.statusCode,
            message: response.response.statusMessage,
            response: response.response,
            requestOptions: response.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
