import 'package:dio/dio.dart';
import 'package:euro_exchange_api_website/controllers/base_controller.dart';
import 'package:euro_exchange_api_website/controllers/http_method.dart';

class RequestController extends BaseController {
  Dio _dio = Dio();

  RequestController() {
    _dio.options.baseUrl = "https://european-exchange-api.herokuapp.com";
    _dio.options.connectTimeout = 10000;
    _dio.options.receiveTimeout = 10000;
  }

  Future<Response<T>> makeRequest<T>(HttpMethod httpMethod, String path,
      {FormData? data, Map<String, dynamic>? queryParams}) async {
    switch (httpMethod) {
      case HttpMethod.GET:
        return _dio.get(path);
      case HttpMethod.POST:
        return _dio.post(path, data: data, queryParameters: queryParams);
      case HttpMethod.PUT:
        return _dio.put(path, data: data, queryParameters: queryParams);
      case HttpMethod.DELETE:
        return _dio.delete(path, queryParameters: queryParams);
      default:
        throw Exception("Unknown http method");
    }
  }

  @override
  bool get isPermanent => true;

  @override
  bool get lazy => true;

  @override
  String get tag => Tag;

  static const String Tag = "RequestController";
}
