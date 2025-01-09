import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/data_sources/remote/cart/cart_api_service.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/data/models/cart/cart_response_model.dart';
import 'package:freshcart_frontend/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartApiService _cartApiService;

  CartRepositoryImpl(this._cartApiService);

  @override
  Future<DataState<BaseResponseModel>> addToCart(
      {required int productId, required int quantity}) async {
    try {
      final response = await _cartApiService.addToCart(
        productId: productId,
        quantity: quantity,
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

  @override
  Future<DataState<CartResponseModel>> getCart() async {
    try {
      final response = await _cartApiService.getCart();

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
