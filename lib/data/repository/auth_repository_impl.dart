import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/data_sources/remote/auth/auth_api_service.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/data/models/login_model.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl(this._authApiService);

  @override
  Future<DataState<LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await _authApiService.login(
        email: email,
        password: password,
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
  Future<DataState<BaseResponseModel>> register(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await _authApiService.register(
        password: password,
        email: email,
        name: name,
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
