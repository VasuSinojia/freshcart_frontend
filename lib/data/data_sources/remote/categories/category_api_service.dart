import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'category_api_service.g.dart';

@RestApi()
abstract class CategoryApiService {
  factory CategoryApiService(Dio dio) = _CategoryApiService;

  @GET(APIConstants.getCategoriesRoute)
  Future<HttpResponse<CategoryResponseModel>> getCategories();
}
