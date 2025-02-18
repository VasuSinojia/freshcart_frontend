import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/data/models/base_response.dart';
import 'package:freshcart_frontend/data/models/cart/cart_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_api_service.g.dart';

@RestApi()
abstract class CartApiService {
  factory CartApiService(Dio dio) = _CartApiService;

  @POST(APIConstants.addToCart)
  Future<HttpResponse<BaseResponseModel>> addToCart({
    @Field('product_id') required int productId,
    @Field('quantity') required int quantity,
  });

  @GET(APIConstants.getCart)
  Future<HttpResponse<CartResponseModel>> getCart();

  @DELETE(APIConstants.deleteFromCart)
  Future<HttpResponse<BaseResponseModel>> deleteFromCart({
    @Query('product_id') required int productId,
  });
}
