import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  @POST(APIConstants.register)
  Future<HttpResponse<BaseResponseModel>> register({
    @Field('name') required String name,
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @POST(APIConstants.login)
  Future<HttpResponse<BaseResponseModel>> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });
}
