import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/cart/cart_response_model.dart';
import 'package:freshcart_frontend/domain/repository/cart_repository.dart';

class GetCartUseCase
    implements UseCase<DataState<CartResponseModel>, NoParams> {
  final CartRepository _cartRepository;

  GetCartUseCase(this._cartRepository);

  @override
  Future<DataState<CartResponseModel>> call(NoParams params) {
    return _cartRepository.getCart();
  }
}
