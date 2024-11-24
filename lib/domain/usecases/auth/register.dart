import 'package:equatable/equatable.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';

class RegisterUseCase implements UseCase<DataState<BaseResponseModel>, Params> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<DataState<BaseResponseModel>> call(Params params) {
    return _authRepository.register(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class Params extends Equatable {
  final String name;
  final String email;
  final String password;

  const Params({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [name];
}
