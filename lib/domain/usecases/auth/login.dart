import 'package:equatable/equatable.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/login_model.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';

class LoginUseCase implements UseCase<DataState<LoginModel>, Params> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<DataState<LoginModel>> call(Params params) {
    return _authRepository.login(
      email: params.email,
      password: params.password,
    );
  }
}

class Params extends Equatable {
  final String email;
  final String password;

  const Params({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [];
}
