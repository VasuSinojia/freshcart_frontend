import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/domain/repository/cart_repository.dart';

class AddToCartUseCase
    implements UseCase<DataState<BaseResponseModel>, AddToCartParams> {
  final CartRepository _cartRepository;

  AddToCartUseCase(this._cartRepository);

  @override
  Future<DataState<BaseResponseModel>> call(AddToCartParams params) {
    return _cartRepository.addToCart(
      quantity: params.quantity,
      productId: params.productId,
    );
  }
}

class AddToCartParams {
  final int quantity;
  final int productId;

  const AddToCartParams({
    required this.quantity,
    required this.productId,
  });
}
