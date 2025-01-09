import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/data/models/cart/cart_response_model.dart';

abstract class CartRepository {
  Future<DataState<BaseResponseModel>> addToCart({
    required int productId,
    required int quantity,
  });

  Future<DataState<CartResponseModel>> getCart();
}
