import 'package:equatable/equatable.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/data/models/login_model.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';
import 'package:freshcart_frontend/domain/repository/category_repository.dart';

class GetCategoriesUseCase
    implements UseCase<DataState<CategoryResponseModel>, NoParams> {
  final CategoryRepository _categoryRepository;

  GetCategoriesUseCase(this._categoryRepository);

  @override
  Future<DataState<CategoryResponseModel>> call(NoParams params) {
    return _categoryRepository.getCategories();
  }
}
