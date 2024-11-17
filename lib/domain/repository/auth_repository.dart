import 'package:freshcart_frontend/core/resources/data_state.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';

abstract class AuthRepository {
  Future<DataState<BaseResponseModel>> register({
    required String name,
    required String email,
    required String password,
  });

  Future<DataState<BaseResponseModel>> login({
    required String email,
    required String password,
  });
}
