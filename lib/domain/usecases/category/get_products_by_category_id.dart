import 'package:equatable/equatable.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/category/products_response_model.dart';
import 'package:freshcart_frontend/domain/repository/category_repository.dart';

class GetProductsByCategoryIdUseCase
    implements UseCase<DataState<GetProductsResponseModel>, Params> {
  final CategoryRepository _categoryRepository;

  GetProductsByCategoryIdUseCase(this._categoryRepository);

  @override
  Future<DataState<GetProductsResponseModel>> call(Params params) {
    return _categoryRepository.getProductsByCategoryId(
      categoryId: params.categoryId,
    );
  }
}

class Params extends Equatable {
  final String categoryId;

  const Params({required this.categoryId});

  @override
  List<Object?> get props => throw UnimplementedError();
}
