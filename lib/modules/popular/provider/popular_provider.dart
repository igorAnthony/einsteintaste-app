import 'dart:convert';

import 'package:app_compras/models/api_response.dart';
import 'package:app_compras/models/products_model.dart';
import 'package:app_compras/global/constant/api_constant.dart';
import 'package:http/http.dart' as http;
class PopularProvider{
  Future<ApiResponse> getPopularList() async {
    ApiResponse apiResponse = ApiResponse();

    try {
      final response = await http.get(Uri.parse(ApiConstants.popularURL),
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer ${box.read('token')}'
          });
      switch (response.statusCode) {
        case 200:
          apiResponse.data = jsonDecode(response.body)['products']
              .map((p) => Products.fromJson(p))
              .toList();
          print("teste"+apiResponse.data.toString());
          apiResponse.data as List<dynamic>;
          break;
        case 401:
          apiResponse.error = ApiConstants.unauthorized;

          break;
        default:
          apiResponse.error = ApiConstants.somethingWentWrong;

          break;
      }
    } catch (e) {
      apiResponse.error = ApiConstants.serverError;
    }
    return apiResponse;
  }
}